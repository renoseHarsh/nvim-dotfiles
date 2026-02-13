return {
	'kevinhwang91/nvim-ufo',
	dependencies = { 'kevinhwang91/promise-async' },
	event = { 'BufReadPost', 'BufNewFile' },
	config = function()
		require('ufo').setup {
			open_fold_hl_timeout = 0,
			provider_selector = function(bufnr, filetype, buftype)
				return { 'treesitter', 'indent' }
			end,
		}
		vim.o.foldlevel = 99
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true
	end,
}
