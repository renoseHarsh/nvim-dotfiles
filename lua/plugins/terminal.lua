return {
	'akinsho/toggleterm.nvim',
	config = function()
		require('toggleterm').setup {
			size = 20,
			open_mapping = [[<c-\>]],
			direction = 'horizontal',
			float_opts = {
				border = 'double',
				title_pos = 'left',
			},
		}
		function _G.set_terminal_keymaps()
			local opts = { buffer = 0 }
			vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
			vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
			vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
		end
		vim.cmd 'autocmd! TermOpen term://* lua set_terminal_keymaps()'
	end,
}
