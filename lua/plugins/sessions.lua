return {
	-- 'rmagatti/auto-session',
	-- event = 'VeryLazy',
	-- cmd = { 'AutoSession', 'SaveSession', 'RestoreSession', 'DeleteSession' },
	-- keys = {
	-- 	{ '<leader>wr', '<cmd>AutoSession search<CR>', desc = 'Session search' },
	-- 	{ '<leader>ws', '<cmd>AutoSession save<CR>', desc = 'Save session' },
	-- },
	-- opts = {
	-- 	suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/', '~/.local/share/nvim/leetcode' },
	-- 	auto_restore_last_session = true,
	-- },
	'tpope/vim-obsession',
	event = 'VeryLazy',
	keys = {
		{ '<leader>ws', '<cmd>Obsession<CR>', desc = 'Toggle session' },
	},
	-- config = function()
	-- 	vim.api.nvim_create_autocmd('VimEnter', {
	-- 		callback = function()
	-- 			if vim.fn.filereadable 'Session.vim' == 1 then
	-- 				vim.cmd 'Obsession'
	-- 			end
	-- 		end,
	-- 	})
	-- end,
}
