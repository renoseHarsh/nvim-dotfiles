return {
	'stevearc/oil.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	keys = { '<leader>-' },
	config = function()
		local Oil = require 'oil'
		Oil.setup {
			win_options = {
				signcolumn = 'yes:2',
			},
			default_file_explorer = false,
			view_options = {
				show_hidden = true,
			},
		}
		vim.keymap.set('n', '<leader>-', Oil.toggle_float)
	end,
}
