local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
        {
                'nvim-telescope/telescope.nvim', tag = '0.1.6',
                dependencies = { 'nvim-lua/plenary.nvim' }
        },
        { "rose-pine/neovim", name = "rose-pine" },
        {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
        {
                "ThePrimeagen/harpoon",
                branch = "harpoon2",
                dependencies = { "nvim-lua/plenary.nvim" }
        },
        { "tpope/vim-fugitive" },
        {'folke/tokyonight.nvim'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/cmp-nvim-lsp'},
        {
            'hrsh7th/nvim-cmp', -- autocomplete
            dependencies = {
                'hrsh7th/cmp-buffer', -- source for test in buffer
                'hrsh7th/cmp-path', -- source for file system paths in commands
                'L3MON4D3/LuaSnip', -- snippet engine
                'rafamadriz/friendly-snippets', -- useful snippets library
                'saadparwaiz1/cmp_luasnip' -- for lua autocompletion
            }
        },
        {
            'mfussenegger/nvim-lint',
            event = {
                "BufReadPre",
                "BufNewFile",
            }
        },
},
{

})
