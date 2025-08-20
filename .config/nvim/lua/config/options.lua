-- visual options
vim.opt.cursorline = true
vim.opt.list = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- control options
vim.opt.confirm = true
vim.opt.jumpoptions = "view"
vim.opt.mouse = "a"
vim.opt.undofile = true
vim.opt.foldmethod = "marker"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions,globals"

-- file content options
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 0
vim.opt.expandtab = false
vim.opt.smartindent = true

-- windows options for neovide
if vim.g.neovide then
	vim.api.nvim_exec('language en_US', true)
	vim.o.guifont = "NotoSansM Nerd Font:h11:#h-none"
	vim.g.neovide_position_animation_length = 0
	vim.g.neovide_scroll_animation_length = 0
	vim.g.neovide_cursor_animation_length = 0
end
