local k = vim.keymap
local a = vim.api

-- Ex for full buffer file explorer
-- Lexplore for a sideview file explorer akin to NERDTree
-- k.set("n", "<leader>e", vim.cmd.Ex, { silent = true })
k.set("n", "<leader>e", ':Lexplore<CR>', { silent = true })

-- Treat linebreaks as individual lines, not essential, but convenient for READMEs
k.set({'n', 'v'}, 'j', 'gj')
k.set({'n', 'v'}, 'k', 'gk')

-- Save and quit
k.set('n', '<leader>w', ':w!<CR>')
k.set('n', '<leader>q', ':q!<CR>')

-- Get to end and beginning of line
k.set({'n', 'v'}, '<leader>h', '0')
k.set({'n', 'v'}, '<leader>l', '$')

-- Delete from current letter to beginning or end of line
k.set({'n', 'v'}, 'dh', 'd0')
k.set({'n', 'v'}, 'dl', 'd$')

-- :noh for searches
k.set('n', '<leader>hh', ':noh<CR>', { silent = true })

-- FUCK moving stuff with alt
-- (Visual Mode) Shift + K/J moves blocks of lines
k.set('v', 'K', ":m '<-2<CR>gv=gv")
k.set('v', 'J', ":m '>+1<CR>gv=gv")

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

-- Better behavior with Shift J
-- cursor wont go to the end of the line whenever you append
k.set('n', 'J', "mzJ`z")

-- Non-disorienting jumping to the middle of a document
k.set({'n', 'v'}, '<C-d>', '<C-d>zz')
k.set({'n', 'v'}, '<C-u>', '<C-u>zz')

-- Chmod +x without leaving document
k.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Toggle line wrapping with Ctrl+R, useful for writing markdown
k.set('n', '<C-r>', ':set wrap!<CR>', { noremap = true, silent = true })
