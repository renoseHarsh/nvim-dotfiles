return {
	'MeanderingProgrammer/render-markdown.nvim',
	ft = { 'markdown' },
	dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
	config = function()
		local mark = require 'render-markdown'
		mark.setup {
			-- enabled = false,
			completions = {
				blink = { enabled = true },
			},
		}
	end,
}
