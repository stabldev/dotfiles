-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- set colorscheme
vim.cmd.colorscheme("catppuccin")
-- disable all animations
vim.g.snacks_animate = false
