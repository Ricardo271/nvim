return {
    "echasnovski/mini.files",
    version = false,
    config = function()
        require("mini.files").setup({
            options = {
                permanent_delete = false,
            },
        })
        vim.keymap.set("n", "-", ":lua MiniFiles.open()<CR>", {})
    end,
}
