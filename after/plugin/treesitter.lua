require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "python", "c", "lua" },
  sync_install = false,
  auto_install = true,
  ignore_install = {},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
