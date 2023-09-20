local k = vim.keymap
local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.ensure_installed({
	'pyright',
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
	['<CR>'] = cmp.mapping.confirm({ select = true }),
})

lsp.set_preferences({
	sign_icons = { }
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  k.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  k.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  k.set("n", "[d", function() vim.lsp.buf.goto_next() end, opts)
  k.set("n", "]d", function() vim.lsp.buf.goto_prev() end, opts)
end)

lsp.setup()
