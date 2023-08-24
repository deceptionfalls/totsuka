-- Fuck filetree plugins, netrw is my new best friend
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Save and quit
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')

-- Get to end and beginning of line
vim.keymap.set('n', '<leader>h', '0')
vim.keymap.set('n', '<leader>l', '$')

-- :noh for searches
vim.keymap.set('n', '<leader>hh', ':noh<CR>', { silent = true })

-- Re-source config
vim.keymap.set('n', '<leader>so', ':so<CR>', { silent = true })

-- FUCK moving stuff with alt
-- (Visual Mode) Shift + K/J moves blocks of lines
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")

-- Better behavior with Shift J
-- cursor wont go to the end of the line whenever you append
vim.keymap.set('n', 'J', "mzJ`z")

-- Non-disorienting jumping to the middle of a document
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Good paste that doesnt forget shit
vim.keymap.set('x', '<leader>p', '\"_dP')

-- Chmod +x without leaving document
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
