vim.opt.clipboard = "unnamedplus"
vim.opt.complete.opt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a'

vim.opt.timeout = true
vim.opt.timeoutlen = 300

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = false
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.ru = false
vim.opt.showcmd = false
vim.opt.showmode = false
vim.opt.laststatus = 0
-- vim.opt.cmdheight = 0

vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 50

vim.g.mapleader	= ' '
