return {
	'ThePrimeagen/99',
	config = function()
		local _99 = require '99'

		_99.setup {
			model = 'opencode/big-pickle',
			provider = _99.ACPProvider,
		}

		vim.keymap.set('v', '<leader>9s', function()
			_99.stop_all_requests()
		end)
		vim.keymap.set('v', '<leader>9p', function()
			_99.visual_prompt()
		end)
	end,
}
