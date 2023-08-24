require("zen-mode").setup {
    window = {
        backdrop = 1,
        width = .85,
        options = {
            number = false,
            relativenumber = false,
        }
    },
    plugins = {
        twilight = { enabled = true },
    },
}

vim.keymap.set("n", "<leader>zz", function()
    require("zen-mode").toggle()
    vim.wo.wrap = false
end)
