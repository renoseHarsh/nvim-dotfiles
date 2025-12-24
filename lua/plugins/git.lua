return {
	{
		'lewis6991/gitsigns.nvim',
		event = { 'BufReadPre', 'BufNewFile' },
		opts = {},
		keys = {
			{ '<leader>gp', ':Gitsigns preview_hunk<cr>' },
		},
	},
}
