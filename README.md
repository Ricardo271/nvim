# Nvim config files 2.0

Package Manager: Lazy
Colorscheme: Catppuccin

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
