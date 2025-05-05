return {
	-- Colorizer adds color preview
	{
		'norcalli/nvim-colorizer.lua',
		event = { 'BufReadPre', 'BufNewFile' },
		opts = {
			'*',
			css = { rgb_fn = true },
		},
	},
}
