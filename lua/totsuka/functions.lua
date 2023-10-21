local c = vim.cmd

-- Terminals don't have numbers or relative numbers
c([[autocmd TermOpen * setlocal nonumber norelativenumber]])

-- Highlight on yank
c[[
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=120}
augroup END
]]

c([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])
