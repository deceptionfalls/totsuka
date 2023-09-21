local a = vim.api
local c = vim.cmd
local g = vim.g
local o = vim.opt

o.clipboard = "unnamedplus"
o.complete.opt = {'menu', 'menuone', 'noselect'}
o.mouse = 'a'

o.timeout = true
o.timeoutlen = 300

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true

o.number = true
o.relativenumber = true
o.cursorline = false
o.termguicolors = true
o.wrap = false
o.ru = false
o.showcmd = false
o.showmode = false
o.laststatus = 0
o.cmdheight = 1
o.shortmess = 'aowOFCWstTAIcCqFS' -- go away annoying popus

o.incsearch = true
o.hlsearch = true
o.ignorecase = true
o.smartcase = true
o.scrolloff = 8
o.signcolumn = "yes"
o.updatetime = 50

g.mapleader	= ' '

g.netrw_keepdir = 0
g.netrw_browse_split = 4
g.netrw_banner = 0
g.netrw_liststyle = 3
g.netrw_winsize = 20
g.netrw_altv = 1
g.netrw_localcopydircmd = 'cp -r'

-- Terminals don't have numbers or relative numbers
c([[autocmd TermOpen * setlocal nonumber norelativenumber]])

-- Italics on comments and keywords
a.nvim_set_hl(0, "Function", { bold = true })
a.nvim_set_hl(0, "Identifier", { bold = true })
