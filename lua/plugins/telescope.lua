return {
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim',
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
			'nvim-telescope/telescope-ui-select.nvim',
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

			local builtin = require 'telescope.builtin'

			vim.keymap.set('n', '<leader>ff', builtin.find_files)
			vim.keymap.set('n', '<leader>fg', builtin.live_grep)
			vim.keymap.set('n', '<leader>fb', builtin.buffers)

			vim.keymap.set('n', '<leader>ft', function()
				vim.cmd '$tabnew'
				builtin.find_files {
					prompt_title = 'Find File in New Tab',
				}
			end)

			vim.keymap.set('n', '<C-w>s', function()
				vim.cmd 'bel split'
				builtin.find_files()
			end)

			vim.keymap.set('n', '<C-w>v', function()
				vim.cmd 'rightb vsplit'
				builtin.find_files()
			end)

			vim.keymap.set('n', 'grr', builtin.lsp_references)

			vim.keymap.set('n', '<leader>fh', builtin.help_tags)
			vim.keymap.set('n', '<leader>en', function()
				builtin.find_files {
					cwd = vim.fn.stdpath 'config',
				}
			end)
		end,
	},
}
