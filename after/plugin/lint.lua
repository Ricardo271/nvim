local lint = require("lint")

lint.linters_by_ft = {
    css = { "stylelint" },
}

vim.keymap.set("n", "<leader>f", function()
    print("Try lint")
    lint.try_lint()
end, {desc = "Trigger linting for current file" })
