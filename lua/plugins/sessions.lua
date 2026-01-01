return {
	'rmagatti/auto-session',
	event = 'VeryLazy',
	cmd = { 'AutoSession', 'SaveSession', 'RestoreSession', 'DeleteSession' },
	keys = {
		{ '<leader>wr', '<cmd>AutoSession search<CR>', desc = 'Session search' },
		{ '<leader>ws', '<cmd>AutoSession save<CR>', desc = 'Save session' },
	},
	opts = {
		suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/', '~/.local/share/nvim/leetcode' },
		auto_restore_last_session = true,
	},
}
