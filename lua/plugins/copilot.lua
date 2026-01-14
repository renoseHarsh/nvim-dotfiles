return {
	'github/copilot.vim',
	event = 'InsertEnter',
	config = function()
		vim.g.copilot_no_tab_map = true
		vim.keymap.set('i', '<C-j>', '<Plug>(copilot-accept-line)', { silent = true })
		-- vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
		--
		-- 	expr = true,
		-- 	replace_keycodes = false,
		-- 	silent = true,
		-- })
	end,
}
