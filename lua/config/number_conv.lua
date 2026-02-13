local M = {}

local function detect_base(str)
    if str:match('^0x[0-9a-fA-F]+$') or str:match('^0X[0-9a-fA-F]+$') then
        return 16, 'hex'
    elseif str:match('^0b[01]+$') or str:match('^0B[01]+$') then
        return 2, 'binary'
    elseif str:match('^0o[0-7]+$') or str:match('^0O[0-7]+$') then
        return 8, 'octal'
    elseif str:match('^[0-9]+$') then
        return 10, 'decimal'
    end
    return nil, nil
end

local function to_binary(n)
    if n == 0 then return '0' end
    local s = ''
    while n > 0 do
        s = (n % 2) .. s
        n = math.floor(n / 2)
    end
    return s
end

local function convert_number(str)
    local base, base_name = detect_base(str)
    if not base then
        return nil
    end

    local num = tonumber(str, base)
    if not num then
        return nil
    end

    return {
        original = str,
        base_name = base_name,
        binary = string.format('0b%s', to_binary(num)),
        octal = string.format('0o%s', string.format('%o', num)),
        decimal = string.format('%d', num),
        hex = string.format('0x%s', string.format('%X', num)),
    }
end

local function create_float(content, row, col)
    local lines = vim.split(content, '\n')
    local width = 0
    for _, line in ipairs(lines) do
        width = math.max(width, #line)
    end
    width = width + 2

    local height = #lines

    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

    local opts = {
        relative = 'cursor',
        row = row,
        col = col,
        width = width,
        height = height,
        style = 'minimal',
        border = 'rounded',
    }

    local win = vim.api.nvim_open_win(buf, false, opts)
    vim.api.nvim_win_set_option(win, 'winhighlight', 'Normal:Normal')
    vim.api.nvim_win_set_option(win, 'cursorline', false)

    return win
end

function M.show_conversion()
    local word = vim.fn.expand('<cword>')
    local result = convert_number(word)

    if not result then
        vim.notify('Not a valid number: ' .. word, vim.log.levels.WARN)
        return
    end

    local content = string.format(
        'Binary: %s\nOctal: %s\nDecimal: %s\nHex: %s',
        result.binary,
        result.octal,
        result.decimal,
        result.hex
    )

    local cursor_pos = vim.api.nvim_win_get_cursor(0)
    local row = 1
    local col = 0

    local win = create_float(content, row, col)

    vim.defer_fn(function()
        pcall(vim.api.nvim_win_close, win, true)
    end, 5000)
end

return M
