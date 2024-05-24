return {
    {
        'williamboman/mason.nvim',
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            local masonlspconfig = require("mason-lspconfig")
            masonlspconfig.setup({
                ensure_installed = {"lua_ls", "gopls", "clangd"} -- stylelint, prettierd, html-lsp
            })
            masonlspconfig.setup_handlers {
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end,
                lua_ls = function()
                    require('lspconfig').lua_ls.setup({
                        settings = {
                            Lua = {
                                runtime = {
                                    version = 'LuaJIT'
                                },
                                diagnostics = {
                                    globals = {'vim'},
                                },
                                workspace = {
                                    library = {
                                        vim.env.VIMRUNTIME,
                                    }
                                }
                            }
                        }
                    })
                end
            }
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    },
}
