return {
	'stevearc/oil.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	lazy = false,
	config = function()
		local Oil = require 'oil'
		Oil.setup {
			default_file_explorer = false,
			view_options = {
				show_hidden = true,
			},
		}
		vim.keymap.set('n', '<leader>-', Oil.toggle_float)
	end,
}
