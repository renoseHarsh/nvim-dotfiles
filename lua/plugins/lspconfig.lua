return {
	{
		'folke/lazydev.nvim',
		ft = 'lua',
		opts = {
			library = {
				{ path = '${3rd}/luv/library', words = { 'vim%.uv' } },
			},
		},
	},
	{
		'williamboman/mason.nvim',
		event = 'VeryLazy',

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
		cmd = { 'Mason', 'MasonInstall' },

		opts = {
			ensure_installed = { 'lua_ls' },
		},
	},
	{
		'neovim/nvim-lspconfig',
		event = 'VeryLazy',
		config = function()
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.textDocument.foldingRange = {
				dynamicRegistration = false,
				lineFoldingOnly = true,
			}

			vim.lsp.config('*', {
				capabilities = capabilities,
			})

			vim.lsp.enable { 'lua_ls', 'rust_analyzer', 'jsonls', 'cssls', 'clangd', 'pyright' }
		end,
	},
}
