function ColorMyPencils(color)
        color = color or "rose-pine"
        vim.cmd.colorscheme(color)

        -- Makes so that the theme doesn't alter the background
        -- Transparency is set in the terminal configs
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()

print("Hello from rose-pine")
