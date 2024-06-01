local M = {}


M.setup = function()
  require("tokyonight").setup {
    -- transparent = true,
    on_highlights = function(h1, c)
      h1.NvimTreeNormal = {
        bg = "NONE"
      }
      h1.NvimTreeNormalNC = {
        bg = "NONE"
      }
      h1.NvimTreeWinSeparator = {
        bg = "NONE",
        fg = "NONE",
        blend = 0
      }
    end,
    on_colors = function(colors)
      colors.bg = "#131520"
    end,
  }
end


return M
