local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.shiftwidth = 4
opt.tabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
opt.undofile = true

opt.incsearch = true

opt.scrolloff = 8
opt.signcolumn = 'yes'

opt.termguicolors = true

opt.mouse = 'a'
opt.mousemoveevent = true

opt.clipboard = 'unnamedplus'

vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd('InsertLeave', {
	desc = 'Enable Diasnostic signs when leaving insert mode',
	callback = function()
		vim.diagnostic.show()
	end,
})

vim.diagnostic.config {
	virtual_text = true,
	signs = false,
	severity_sort = true,
}

-- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
