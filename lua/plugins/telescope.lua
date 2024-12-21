return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Search for file name in project" })
        vim.keymap.set("n", "<leader>ps", builtin.live_grep, { desc = "Search string in project" })
    end
}
