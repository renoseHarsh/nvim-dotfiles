return {
	'stevearc/conform.nvim',
	event = { 'BufReadPre', 'BufNewFile' },

	config = function()
		local conform = require 'conform'
		conform.setup {
			formatters_by_ft = {
				lua = { 'stylua' },
				rust = { 'rustfmt' },
				jsonc = { 'prettier' },
				css = { 'prettier' },
			},
			format_on_save = {
				lsp_format = 'fallback',
			},
		}

		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
		vim.keymap.set('n', '<leader>mp', function()
			conform.format {
				lsp_format = 'fallback',
			}
		end)
	end,
}
