return {
	'kawre/leetcode.nvim',
	build = ':TSUpdate html',
	cmd = { 'Leet' },
	dependencies = {
		'nvim-telescope/telescope.nvim',
		'nvim-lua/plenary.nvim',
		'MunifTanjim/nui.nvim',
	},
	opts = {
		injector = {
			['cpp'] = {
				imports = function()
					-- return a different list to omit default imports
					return { '#include <bits/stdc++.h>', 'using namespace std;' }
				end,
			},
		},
	},
}
