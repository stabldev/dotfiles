return {
  "catppuccin/nvim",
  lazy = true,
  name = "catppuccin",
  specs = {
    {
      "akinsho/bufferline.nvim",
      optional = true,
      opts = function(_, opts)
        if (vim.g.colors_name or ""):find("catppuccin") then
          opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
        end
      end,
    },
  },
  config = function()
    require("catppuccin").setup({
      term_colors = true,
      transparent_background = true,

      custom_highlights = function(colors)
        local u = require("catppuccin.utils.colors")
        return {
          CursorLine = { bg = u.blend(colors.overlay0, colors.base, 0.45) },
          LspReferenceText = { bg = colors.surface2 },
          LspReferenceWrite = { bg = colors.surface2 },
          LspReferenceRead = { bg = colors.surface2 },

          Pmenu = { bg = colors.base, fg = colors.text },
          PmenuSel = { bg = colors.surface2, fg = colors.text, style = { "bold" } },
          PmenuSbar = { bg = colors.base },
          PmenuThumb = { bg = colors.surface2 },
        }
      end,
    })
  end,
}
