local k = vim.keymap
local a = vim.api

--------------
-- Movement --
--------------

-- Treat linebreaks as individual lines, not essential, but convenient for READMEs
k.set({'n', 'v'}, 'j', 'gj')
k.set({'n', 'v'}, 'k', 'gk')

-- Get to end and beginning of line
k.set({'n', 'v'}, '<leader>h', '0')
k.set({'n', 'v'}, '<leader>l', '$')

-- Only if you're based, disables arrow keys in normal and visual mode
k.set({'n', 'v'}, '<Up>', '<Nop>')
k.set({'n', 'v'}, '<Down>', '<Nop>')
k.set({'n', 'v'}, '<Right>', '<Nop>')
k.set({'n', 'v'}, '<Left>', '<Nop>')

------------
-- Splits --
------------

-- Horizontal and Vertical splits
k.set('n', '<leader>s', '<C-w>s')
k.set('n', '<leader>v', '<C-w>v')

-- Terminals inside Neovim
-- Not the best but for builtin, it's pretty good
k.set('n', '<leader>ss', ':split term://zsh<CR>', { silent = true })
k.set('n', '<leader>vv', ':vsplit term://zsh<CR>', { silent = true })

-- Navigate between splits
k.set('n', '<C-h>', "<C-w>h")
k.set('n', '<C-l>', "<C-w>l")
k.set('n', '<C-k>', "<C-w>k")
k.set('n', '<C-j>', "<C-w>j")

-- Terminal navigation
k.set('t', "<esc><esc>", "<c-\\><c-n>")
k.set('t', "<C-h>", "<cmd>wincmd h<cr>")
k.set('t', "<C-j>", "<cmd>wincmd j<cr>")
k.set('t', "<C-k>", "<cmd>wincmd k<cr>")
k.set('t', "<C-l>", "<cmd>wincmd l<cr>")

-- Resize splits
k.set('n', '<C-Up>', ":resize -2<CR>")
k.set('n', '<C-Down>', ":resize +2<CR>")
k.set('n', '<C-Right>', ":vertical resize -2<CR>")
k.set('n', '<C-Left>', ":vertical resize +2<CR>")

-------------
-- Buffers --
-------------

k.set("n", "<leader>e", vim.cmd.Ex, { silent = true })       -- Ex for full buffer file explorer
k.set("n", "<leader>ve", ':Vexplore<CR>', { silent = true }) -- Lexplore for a sideview file explorer akin to NERDTree

-- Go to next/previous buffer
k.set('n', '<leader>bn', ':bnext<CR>')
k.set('n', '<leader>bb', ':bprev<CR>')

----------
-- Misc --
----------

-- Run python code
k.set('n', '<leader>rr', '!python %<CR>')

-- Save and quit
k.set('n', '<leader>w', ':w!<CR>', { silent = true })
k.set('n', '<leader>q', ':q!<CR>', { silent = true })

-- Delete from current letter to beginning or end of line
k.set({'n', 'v'}, 'dh', 'd0')
k.set({'n', 'v'}, 'dl', 'd$')

k.set('n', 'H', ':noh<CR>', { silent = true }) -- :noh for searches

-- FUCK moving stuff with alt
-- (Visual Mode) Shift + K/J moves blocks of lines
k.set('v', 'K', ":m '<-2<CR>gv=gv")
k.set('v', 'J', ":m '>+1<CR>gv=gv")

k.set('n', 'J', "mzJ`z") -- Better behavior with Shift J, cursor wont go to the end of the line whenever you append

-- Non-disorienting jumping to the middle of a document
k.set({'n', 'v'}, '<C-d>', '<C-d>zz')
k.set({'n', 'v'}, '<C-u>', '<C-u>zz')

k.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })       -- Chmod +x without leaving document
k.set('n', '<C-w>', ':set wrap!<CR>', { noremap = true, silent = true }) -- Toggle line wrapping with Ctrl+R, useful for writing markdown
k.set('n', '<C-m>', ':set relativenumber!<CR>', { silent = true })       -- Toggle relative numbers
k.set('i', 'kk', '<ESC>')                                                -- kk to exit insert mode
k.set('n', 'q', '<C-r>')                                                 -- Faster redo
k.set('n', '<leader>r', ':%s/')                                          -- Easier find and replace with <leader>r
