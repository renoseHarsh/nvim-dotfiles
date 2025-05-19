return {
	{
		'lewis6991/gitsigns.nvim',
		event = { 'BufReadPre', 'BufNewFile' },
		opts = true,
		keys = {
			{ '<leader>gp', ':Gitsigns preview_hunk<cr>' },
		},
	},
	{
		'refractalize/oil-git-status.nvim',
		dependencies = {
			'stevearc/oil.nvim',
		},
		config = true,
	},
}
