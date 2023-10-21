local a = vim.api
local c = vim.cmd
local g = vim.g
local o = vim.opt
local w = vim.wo

o.clipboard = "unnamedplus"
o.complete.opt = {'menu', 'menuone', 'noselect'}
o.mouse = 'a'

o.timeout = true
o.timeoutlen = 300

o.autoindent = true
o.shiftround = true
o.smarttab = true
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true

o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true

o.modeline = false
o.number = false
o.relativenumber = false
o.termguicolors = true
o.cursorline = true
o.wrap = false
o.ru = false

o.showcmd = true
o.showmode = false
o.laststatus = 0
o.cmdheight = 0
o.more = false

o.shortmess:append("C")
o.shortmess:append("S")
o.shortmess:append("c")
o.shortmess:append("s")
o.shortmess:append "c"
o.shortmess:append "I"

o.spelllang:append "cjk"
o.whichwrap:append "<,>,[,],h,l"

o.incsearch = true
o.hlsearch = true
o.ignorecase = true
o.smartcase = true
o.scrolloff = 8
o.signcolumn = "yes"
o.updatetime = 50

o.title = true
o.numberwidth = 4
o.scrolloff = 8
o.sidescrolloff = 8

g.mapleader = ' '

g.netrw_keepdir = 0
g.netrw_browse_split = 0
g.netrw_banner = 0
g.netrw_liststyle = 3
g.netrw_winsize = 20
g.netrw_altv = 1
g.netrw_localcopydircmd = 'cp -r'

w.fillchars='eob: '

o.background = "dark"
c("colorscheme oxocarbon")

-- Italics on comments and keywords
a.nvim_set_hl(0, "Function", { bold = true })
a.nvim_set_hl(0, "Identifier", { bold = true })
