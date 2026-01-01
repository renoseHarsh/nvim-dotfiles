return {
	{
		'folke/tokyonight.nvim',
		config = function()
			-- require('tokyonight').setup {
			-- 	transparent = true,
			-- 	styles = {
			-- 		sidebars = 'transparent',
			-- 		floats = 'transparent',
			-- 	},
			-- }
			-- vim.cmd [[colorscheme tokyonight]]
                vim.api.nvim_create_autocmd("UIEnter", {
      once = true,
      callback = function()
        vim.cmd("colorscheme tokyonight")
      end,
    })
		end,
	},
	-- {
	-- 	'catppuccin/nvim',
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd [[colorscheme catppuccin-frappe]]
	-- 	end,
	-- },
	-- {
	-- 'projekt0n/github-nvim-theme',
	-- lazy = false,
	-- priority = 1000,
	-- config = function()
	-- 	vim.cmd [[colorscheme github_dark_high_contrast]]
	-- end,
	-- },
	-- {
	-- 	'uZer/pywal16.nvim',
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd.colorscheme 'pywal16'
	-- 	end,
	-- },
	-- {
	-- 	'RRethy/base16-nvim',
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd.colorscheme 'base16-black-metal-dark-funeral'
	-- 	end,
	-- },
	-- {
	-- 'sainnhe/gruvbox-material',
	-- lazy = false,
	-- priority = 1000,
	-- config = function()
	-- 	vim.g.gruvbox_material_background = 'hard' -- 'hard', 'medium', 'soft'
	-- 	vim.cmd [[colorscheme gruvbox-material]]
	-- end,
	-- },
}
