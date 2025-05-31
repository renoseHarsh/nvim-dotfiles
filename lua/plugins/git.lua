return {
	{
		'lewis6991/gitsigns.nvim',
		event = { 'BufReadPre', 'BufNewFile' },
		opts = true,
		keys = {
			{ '<leader>gp', ':Gitsigns preview_hunk<cr>' },
		},
	},
	-- {
	-- 	'refractalize/oil-git-status.nvim',
	-- 	dependencies = {
	-- 		'stevearc/oil.nvim',
	-- 	},
	-- 	opts = {
	-- 		show_ignored = true,
	-- 		symbols = {
	-- 			index = {
	-- 				['!'] = '✗',
	-- 				['?'] = '?',
	-- 				['A'] = 'A',
	-- 				['C'] = 'C',
	-- 				['D'] = 'D',
	-- 				['M'] = 'M',
	-- 				['R'] = 'R',
	-- 				['T'] = 'T',
	-- 				['U'] = 'U',
	-- 				[' '] = ' ',
	-- 			},
	-- 			working_tree = {
	-- 				['!'] = '✗',
	-- 				['?'] = '?',
	-- 				['A'] = 'A',
	-- 				['C'] = 'C',
	-- 				['D'] = 'D',
	-- 				['M'] = 'M',
	-- 				['R'] = 'R',
	-- 				['T'] = 'T',
	-- 				['U'] = 'U',
	-- 				[' '] = ' ',
	-- 			},
	-- 		},
	-- 	},
	-- },
}
