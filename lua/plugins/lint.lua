return {
	'mfussenegger/nvim-lint',
	event = { 'BufNewFile', 'BufReadPre' },

	config = function()
		local lint = require 'lint'
		lint.linters_by_ft = {
			lua = { 'codespell' },
		}

		vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
			callback = function()
				lint.try_lint()
			end,
		})

		vim.keymap.set('n', '<leader>ll', function()
			lint.try_lint()
		end)
	end,
}
