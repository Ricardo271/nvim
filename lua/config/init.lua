require("config.set")
require("config.remap")
require("config.lazy") -- must be before the config.lsp
require("config.lsp")
-- The requires need to be in this specifc order so that the leader remaps work

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.hl.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})


local diagnostics_active = true
vim.api.nvim_create_user_command("ToggleDiagnostics", function ()
    diagnostics_active = not diagnostics_active
    if diagnostics_active then
        vim.diagnostic.enable()
        print("Diagnostics enabled")
    else
        vim.diagnostic.enable(false)
        print("Diagnostics disabled")
    end
end, {})
