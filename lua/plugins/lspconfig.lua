return {
	{
		'williamboman/mason.nvim',
		event = { 'BufReadPre', 'BufNewFile' },

		opts = {
			ui = {
				icons = {
					package_installed = '✓',
					package_pending = '➜',
					package_uninstalled = '✗',
				},
			},
		},
	},
	{
		'williamboman/mason-lspconfig.nvim',
		dependencies = {
			{
				'folke/lazydev.nvim',
				ft = 'lua',
				opts = {
					library = {
						-- See the configuration section for more details
						-- Load luvit types when the `vim.uv` word is found
						{ path = '${3rd}/luv/library', words = { 'vim%.uv' } },
					},
				},
			},
		},
		event = { 'BufReadPre', 'BufNewFile' },

		opts = {
			ensure_installed = { 'lua_ls' },
		},
	},
	{
		'neovim/nvim-lspconfig',
		event = { 'BufReadPre', 'BufNewFile' },
		vim.lsp.enable { 'lua_ls', 'rust_analyzer', 'jsonls', 'cssls', 'pyright', 'clangd' },
	},
}
-- json.format.enable
