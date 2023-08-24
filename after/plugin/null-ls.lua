local null_ls = require("null-ls")

local opts = {
    debug = false,
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.spell,
    },
}

-- Black setup
vim.g.black_use_virtualenv = 0

-- This formats the file on save and reloads the buffer
vim.api.nvim_exec([[
  augroup black_on_save
    autocmd!
    autocmd BufWritePre *.py :silent! execute "!black %" | e!
  augroup end
]], false)

return opts
