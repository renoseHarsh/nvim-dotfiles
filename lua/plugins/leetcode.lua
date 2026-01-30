return {
	'kawre/leetcode.nvim',
	build = ':TSUpdate html',
	cmd = { 'Leet' },
	dependencies = {
		'nvim-lua/plenary.nvim',
		'MunifTanjim/nui.nvim',
	},
	keys = {
		{ '<leader>lt', '<cmd>Leet run<cr>', desc = 'LeetCode Run (Test)' },
		{ '<leader>ls', '<cmd>Leet submit<cr>', desc = 'LeetCode Submit' },
		{ '<leader>lc', '<cmd>Leet console<cr>', desc = 'LeetCode Console' },
		{ '<leader>li', '<cmd>Leet info<cr>', desc = 'LeetCode Info' },
	},
	opts = {
		picker = { provider = 'snacks-picker' },
		injector = {
			['cpp'] = {
				imports = function()
					return {
						'#include "leetcode_def.hpp" // IWYU pragma: keep',
						'#include <bits/stdc++.h>',
						'using namespace std;',
					}
				end,
			},
		},
	},
}
