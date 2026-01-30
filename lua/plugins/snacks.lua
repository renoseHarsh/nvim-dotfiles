return {
	'folke/snacks.nvim',
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		picker = { enabled = true },
		dashboard = {
			preset = {
				keys = {
					{
						icon = ' ',
						key = 's',
						desc = 'Restore Session',
						action = function()
							if vim.fn.filereadable 'Session.vim' == 1 then
								vim.cmd 'source Session.vim'
								vim.notify('Session restored', vim.log.levels.INFO, { title = 'Session' })
							else
								vim.notify('No Session.vim found', vim.log.levels.WARN, { title = 'Session' })
							end
						end,
					},
					{ icon = ' ', key = 'f', desc = 'Find Files', action = ":lua Snacks.dashboard.pick('files')" },
					{
						icon = ' ',
						key = 'b',
						desc = 'Find Word',
						action = ":lua Snacks.dashboard.pick('live_grep')",
					},
					{
						icon = ' ',
						key = 'w',
						desc = 'Open Config',
						action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
					},
					{ icon = ' ', key = 'l', desc = 'Leetcode', action = ':Leet' },
					{ icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
				},
			},
			sections = {
				{
					section = 'terminal',
					cmd = 'chafa ~/.config/nvim/assets/backiee-311581-landscape.jpg --format symbols --symbols vhalf --size 60x17 --stretch; sleep .1',
					height = 17,
					padding = 1,
				},
				{ section = 'keys', gap = 1, padding = 1 },
				{ section = 'startup' },
			},
		},
		explorer = { enabled = true },
		notifier = { enabled = true },
	},
	keys = {
		{
			'<leader>gb',
			function()
				Snacks.git.blame_line()
			end,
			desc = 'Git Branches',
		},
		{
			'<leader>tc',
			function()
				Snacks.picker.colorschemes()
			end,
			desc = 'Colorschemes',
		},
		{
			'<leader>ff',
			function()
				Snacks.picker.files()
			end,
			desc = 'Find Files',
		},
		{
			'<leader>fg',
			function()
				Snacks.picker.grep()
			end,
			desc = 'Live Grep',
		},
		{
			'<leader>fh',
			function()
				Snacks.picker.help()
			end,
			desc = 'Help Tags',
		},
		{
			'grr',
			function()
				Snacks.picker.lsp_references()
			end,
			desc = 'LSP References',
		},
		{
			'<leader>ft',
			function()
				vim.cmd 'tabnew'
				Snacks.picker.files()
			end,
			desc = 'Find in New Tab',
		},
		{
			'<leader>fs',
			function()
				vim.cmd 'bel split'
				Snacks.picker.files()
			end,
			desc = 'Find in Split',
		},
		{
			'<leader>fv',
			function()
				vim.cmd 'rightb vsplit'
				Snacks.picker.files()
			end,
			desc = 'Find in VSplit',
		},
		{
			'<leader>fc',
			function()
				Snacks.picker.files { cwd = vim.fn.stdpath 'config' }
			end,
			desc = 'Edit Neovim Config',
		},
		{
			'<leader>e',
			function()
				Snacks.picker.explorer()
			end,
			desc = 'File Explorer',
		},
		{
			'<leader>.',
			function()
				Snacks.scratch()
			end,
			desc = 'Toggle Scratch Buffer',
		},
		{
			'<leader>S',
			function()
				Snacks.scratch.select()
			end,
			desc = 'Select Scratch Buffer',
		},
	},
}
