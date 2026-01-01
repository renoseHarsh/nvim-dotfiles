return {
	'kawre/leetcode.nvim',
	build = ':TSUpdate html',
	cmd = { 'Leet' },
	dependencies = {
		'nvim-lua/plenary.nvim',
		'MunifTanjim/nui.nvim',
	},
	keys = {
		{ '<leader>lt', '<cmd>w | Leet run<cr>', desc = 'LeetCode Run (Test)' },
		{ '<leader>ls', '<cmd>w | Leet submit<cr>', desc = 'LeetCode Submit' },
		{ '<leader>lc', '<cmd>w | Leet console<cr>', desc = 'LeetCode Console' },
		{ '<leader>li', '<cmd>w | Leet info<cr>', desc = 'LeetCode Info' },
	},
	opts = {
		-- image_support = true,
		picker = { provider = 'snacks-picker' },
		injector = {
			['cpp'] = {
				imports = function()
					return { '#include <bits/stdc++.h>', 'using namespace std;' }
				end,
			},
		},
	},
}
