return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			local masonlspconfig = require("mason-lspconfig")
			masonlspconfig.setup({
				ensure_installed = { "lua_ls", "clangd" }, -- stylelint, prettierd, html-lsp
			})

			local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
			masonlspconfig.setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = lsp_capabilities,
					})
				end,
				lua_ls = function()
					require("lspconfig").lua_ls.setup({
						capabilities = lsp_capabilities,
						settings = {
							Lua = {
								runtime = {
									version = "LuaJIT",
								},
								diagnostics = {
									globals = { "vim" },
								},
								workspace = {
									library = {
										vim.env.VIMRUNTIME,
                                        "${3rd}/love2d/library",
									},
								},
							},
						},
                        root_dir = function (fname)
                            return vim.fn.getcwd()
                        end
					})
				end,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover information about symbol" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "See definition" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "See code actions" })
		end,
	},
}
