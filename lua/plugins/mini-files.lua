return {
	"echasnovski/mini.files",
	version = false,
    config = function ()
        require("mini.files").setup()
        vim.keymap.set("n", "-", ":lua MiniFiles.open()<CR>", {})
    end
}
