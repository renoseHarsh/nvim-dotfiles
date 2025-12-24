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

vim.keymap.set('n', '<leader>mk', ':make<cr>')

vim.keymap.set('n', 'c', '"_c')
vim.keymap.set('n', 'C', '"_C')

vim.keymap.set('n', 'd', '"_d')
vim.keymap.set('n', 'D', '"_D')
vim.keymap.set('v', 'd', '"_d')
vim.keymap.set('n', '<leader>d', '"+d')
vim.keymap.set('v', '<leader>d', '"+d')

vim.keymap.set('n', 'x', '"_x')

vim.api.nvim_create_autocmd('FileType', {
	pattern = 'cpp',
	callback = function()
		vim.keymap.set('n', '<F5>', function()
			local file = vim.fn.expand '%'
			local name = vim.fn.expand '%:t:r'
			local output = '/tmp/' .. name
			vim.cmd 'w'

			if not _G.cpp_term then
				local Terminal = require('toggleterm.terminal').Terminal
				_G.cpp_term = Terminal:new { close_on_exit = true }
			end

			_G.cpp_term:toggle()
			_G.cpp_term:send('g++ -Wall -Wextra -o ' .. output .. ' ' .. file .. ' && ' .. output .. '\n')
		end, { buffer = true, noremap = true, silent = true })
	end,
})

vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Window ←', silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Window ↓', silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Window ↑', silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Window →', silent = true })
