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
		-- 'projekt0n/github-nvim-theme',
		-- lazy = false,
		-- priority = 1000,
		-- config = function()
		-- 	vim.cmd [[colorscheme github_dark_high_contrast]]
		-- end,
	},
	{
		'uZer/pywal16.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme 'pywal16'
		end,
	},
	{
		-- 'sainnhe/gruvbox-material',
		-- lazy = false,
		-- priority = 1000,
		-- config = function()
		-- 	vim.g.gruvbox_material_background = 'hard' -- 'hard', 'medium', 'soft'
		-- 	vim.cmd [[colorscheme gruvbox-material]]
		-- end,
	},
}
