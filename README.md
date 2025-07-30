# Nvim config files 2.0

Currently installing nvim via appimage release to prevente pacman updates

Package Manager: Lazy
LSPs installer: Mason

## LSPs
See [common configurations](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md).
Create file for configurations in lsp/.
Enable lsp in lua/ricardo/lsp.lua.

## Plugins

### Lazy
With `require("lazy").setup("plugins")` Lazy installs and loads plugins from /lua/plugins/ directory.
It also calls the config property of that files and the plugin `require.config` property

### Telescope
- Allows for fuzzy finding of files and strings

### Lualine
- Requires a Nerd Font to correctly display the icons

 ### vim-commentary
- For commenting and uncommenting lines
- gcc for commenting
- gc for commenting in visual mode
