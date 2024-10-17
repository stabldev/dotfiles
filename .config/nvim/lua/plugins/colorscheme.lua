return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = true,
  priority = 1000,
  opts = {},
  config = function()
    require("catppuccin").setup({
      term_colors = true,
      transparent_background = true,

      custom_highlights = function(colors)
        local u = require("catppuccin.utils.colors")
        return {
          -- CursorLineNr = { bg = u.blend(colors.overlay0, colors.base, 0.75), style = { "bold" } },
          CursorLine = { bg = u.blend(colors.overlay0, colors.base, 0.45) },
          LspReferenceText = { bg = colors.surface2 },
          LspReferenceWrite = { bg = colors.surface2 },
          LspReferenceRead = { bg = colors.surface2 },
        }
      end,
    })
  end,
}
