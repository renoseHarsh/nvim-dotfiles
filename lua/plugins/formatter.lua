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
				cpp = { 'clang-format' },
				sh = { 'shfmt' },
				c = { 'clang-format' },
				h = { 'clang-format' },
				python = { 'black', 'isort' },
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
