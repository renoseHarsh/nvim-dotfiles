return {
	'rmagatti/auto-session',
	lazy = false,
	keys = {
		{ '<leader>wr', '<cmd>SessionSearch<CR>', desc = 'Session search' },
		{ '<leader>ws', '<cmd>SessionSave<CR>', desc = 'Save session' },
	},
	---@module "auto-session"
	---@type AutoSession.Config
	opts = {
		suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/', '~/.local/share/nvim/leetcode' },
		auto_save = true,
	},
}
