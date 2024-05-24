vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
    print("Shout out")
end)

vim.keymap.set("i", "<C-c>", "<Esc>")
