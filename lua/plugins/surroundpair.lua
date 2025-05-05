return {
	{
		'jiangmiao/auto-pairs',
		event = 'InsertEnter',
	},
	{
		'kylechui/nvim-surround',
		event = { 'BufReadPre', 'BufNewFile' },
		config = true,
	},
}
