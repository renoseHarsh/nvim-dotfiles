return {
	-- {
	-- 	'folke/tokyonight.nvim',
	--enabled = false,
	-- lazy = false,
	-- priority = 1000,
	-- config = function()
	-- 	vim.cmd [[colorscheme tokyonight-night]]
	-- end,
	-- },
	-- {
	-- 'catppuccin/nvim',
	-- name = 'catppuccin',
	-- lazy = false,
	-- priority = 1000,
	-- config = function()
	-- 	vim.cmd [[colorscheme catppuccin-macchiato]]
	-- end,
	-- },
	{
		'projekt0n/github-nvim-theme',
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd [[colorscheme github_dark_default]]
		end,
	},
}
