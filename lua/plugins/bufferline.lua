return {
	'akinsho/bufferline.nvim',
	version = '*',
	dependencies = 'nvim-tree/nvim-web-devicons',
	event = { 'BufNewFile', 'BufReadPre' },
	keys = {
		{ '<Tab>', '<Cmd>BufferLineCycleNext<CR>', desc = 'Next buffer' },
		{ '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', desc = 'Previous buffer' },
		{ '<leader>c', '<Cmd>bdelete<CR>', desc = 'Close buffer' },
	},
	opts = {
		options = {
			mode = 'tabs',
			themable = true,
			diagnostics = 'nvim_lsp',
			hover = {
				enabled = true,
				delay = 0,
				reveal = { 'close' },
			},
		},
	},
}
