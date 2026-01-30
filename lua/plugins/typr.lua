return {
	'nvzone/typr',
	dependencies = 'nvzone/volt',
	enabled = false,
	opts = {},
	cmd = { 'Typr', 'TyprStats' },
	config = function()
		vim.api.nvim_create_autocmd('FileType', {
			pattern = 'typr',
			callback = function(event)
				local pairs = require 'nvim-autopairs'
				pairs.disable()
				vim.api.nvim_create_autocmd('BufWinLeave', {
					buffer = event.buf,
					callback = function()
						pairs.enable()
					end,
				})
			end,
		})
	end,
}
