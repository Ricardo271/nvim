vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Previous View"})

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll half a page down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll half a page up" })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
    print("Shout out")
end, { desc = "Source current file" })

vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Escape" })

vim.keymap.set('c', '<tab>', '<C-z>', { silent = false }) -- to fix cmp
