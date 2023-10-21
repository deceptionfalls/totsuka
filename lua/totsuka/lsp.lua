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

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.setup()
