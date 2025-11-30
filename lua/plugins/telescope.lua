return {
	{
		'nvim-telescope/telescope.nvim',

		cmd = 'Telescope',

		dependencies = {
			'nvim-lua/plenary.nvim',
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
			'nvim-telescope/telescope-ui-select.nvim',
		},

		keys = {
			{
				'<leader>ff',
				function()
					require('telescope.builtin').find_files()
				end,
				desc = 'Find Files',
			},
			{
				'<leader>fg',
				function()
					require('telescope.builtin').live_grep()
				end,
				desc = 'Live Grep',
			},
			{
				'<leader>fb',
				function()
					require('telescope.builtin').buffers()
				end,
				desc = 'Buffers',
			},
			{
				'<leader>fh',
				function()
					require('telescope.builtin').help_tags()
				end,
				desc = 'Help Tags',
			},
			{
				'grr',
				function()
					require('telescope.builtin').lsp_references()
				end,
				desc = 'LSP References',
			},

			-- Custom Logic Keymaps
			{
				'<leader>ft',
				function()
					vim.cmd '$tabnew'
					require('telescope.builtin').find_files { prompt_title = 'Find File in New Tab' }
				end,
				desc = 'Find in New Tab',
			},
			{
				'<C-w>s',
				function()
					vim.cmd 'bel split'
					require('telescope.builtin').find_files()
				end,
				desc = 'Find in Split',
			},
			{
				'<C-w>v',
				function()
					vim.cmd 'rightb vsplit'
					require('telescope.builtin').find_files()
				end,
				desc = 'Find in VSplit',
			},
			{
				'<leader>en',
				function()
					require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config' }
				end,
				desc = 'Edit Neovim Config',
			},
		},

		config = function()
			local teles = require 'telescope'
			teles.setup {
				defaults = { file_ignore_patterns = { 'venv' } },
				extensions = {
					fzf = {},
					['ui-select'] = {
						require('telescope.themes').get_dropdown {},
					},
				},
			}

			teles.load_extension 'ui-select'
		end,
	},
}
