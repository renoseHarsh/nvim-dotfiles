return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	event = { 'BufReadPre', 'BufNewFile' },
	config = function()
		require('nvim-treesitter.configs').setup {
			ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'markdown', 'markdown_inline' },
			sync_install = false,
			auto_install = true,
			ignore_install = {},
			highlight = {
				enable = true,
			},
		}
	end,
}
