return {
	{
		'folke/tokyonight.nvim',
		--enabled = false,
		lazy = false,
		priority = 1000,
		-- config = function()
		-- 	vim.cmd [[colorscheme tokyonight-night]]
		-- end,
	},
	{
		'catppuccin/nvim',
		name = 'catppuccin',
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd [[colorscheme catppuccin-macchiato]]
		end,
	},
}
