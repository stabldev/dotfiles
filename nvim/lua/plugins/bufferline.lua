return {
  "akinsho/bufferline.nvim",
  opts = {},
  config = function()
    local catppuccin = require("catppuccin.palettes.mocha")
    require("bufferline").setup({
      options = {
        separator_style = "thin",
      },
      highlights = {
        separator = {
          bg = catppuccin.base,
          fg = catppuccin.base,
        },
      },
    })
  end,
}
