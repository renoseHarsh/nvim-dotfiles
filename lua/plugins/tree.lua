return {
	'nvim-tree/nvim-tree.lua',
	version = '*',
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
	keys = {
		{ '<C-n>', ':NvimTreeToggle<CR>' },
	},
	config = function()
		local function my_on_attach(bufnr)
			local api = require 'nvim-tree.api'

			local function opts(desc)
				return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end

			-- default mappings
			api.config.mappings.default_on_attach(bufnr)

			-- custom mappings
			vim.keymap.set('n', 'l', api.node.open.edit, opts 'Open')
			vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts 'Help')
		end

		require('nvim-tree').setup {
			hijack_cursor = true,
			on_attach = my_on_attach,
			view = {
				width = 30,
			},
		}
	end,
}
