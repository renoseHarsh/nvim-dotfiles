vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')

vim.keymap.set('i', 'jk', '<Esc>')

vim.keymap.set('n', '<A-j>', ':m .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv")

vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

vim.keymap.set('n', '<space><space>x', '<cmd>source %<CR>')
vim.keymap.set('n', '<space>x', ':.lua<CR>')
vim.keymap.set('v', '<space>x', ':lua<CR>')

vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv")

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<leader>mk', ':make run<cr>')

vim.keymap.set('n', 'c', '"_c')
vim.keymap.set('n', 'C', '"_C')
vim.keymap.set('v', 'c', '"_c')
vim.keymap.set('n', '<leader>c', '"+c')
vim.keymap.set('v', '<leader>c', '"+c')

vim.keymap.set('n', 'd', '"_d')
vim.keymap.set('n', 'D', '"_D')
vim.keymap.set('v', 'd', '"_d')
vim.keymap.set('n', '<leader>d', '"+d')
vim.keymap.set('v', '<leader>d', '"+d')

vim.keymap.set('x', 'p', [["_dP]])
vim.keymap.set('n', 'x', '"_x')

vim.keymap.set('n', "'", function()
	local char = vim.fn.getcharstr()
	local current_buf = vim.api.nvim_get_current_buf()
	local ok = pcall(vim.cmd, "normal! '" .. char)
	if ok then
		local new_buf = vim.api.nvim_get_current_buf()
		if new_buf ~= current_buf then
			pcall(vim.cmd, 'normal! `"')
		end
	end
end, { desc = "Jump to Mark's File -> Restore Last Cursor Pos" })

vim.keymap.set(
	'n',
	'<leader>n',
	require('config.number_conv').show_conversion,
	{ desc = 'Show number base conversions' }
)

vim.api.nvim_create_autocmd({ 'FileType' }, {
	pattern = { 'c', 'cpp' },
	callback = function(args)
		vim.keymap.set('n', '<leader>oh', function()
			local clients = vim.lsp.get_clients { bufnr = 0, name = 'clangd' }
			if #clients > 0 then
				local params = { uri = vim.uri_from_bufnr(0) }
				clients[1].request('textDocument/switchSourceHeader', params, function(err, result)
					if err then
						vim.notify('Failed to switch: ' .. err.message, vim.log.levels.ERROR)
					elseif result then
						local path = vim.uri_to_fname(result)
						vim.cmd('edit ' .. path)
					end
				end)
			else
				local ext = { ['c'] = 'h', ['cpp'] = 'h' }
				local current = vim.fn.expand '%:e'
				local base = vim.fn.expand '%:r'
				local new_ext = ext[current] or 'cpp'
				local new_file = base .. '.' .. new_ext
				if vim.fn.filereadable(new_file) == 1 then
					vim.cmd('edit ' .. new_file)
				else
					vim.notify('Corresponding header/source not found', vim.log.levels.WARN)
				end
			end
		end, { buffer = args.buf, desc = 'Switch between source and header' })
	end,
})
