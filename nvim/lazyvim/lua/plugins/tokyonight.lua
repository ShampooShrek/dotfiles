return {
  "folke/tokyonight.nvim",
  opts = {
    transparent = true,
    on_highlights = function(h1, c)
      h1.NeoTreeNormal = {
        bg = "NONE",
      }
      h1.NeoTreeNormalNC = {
        bg = "NONE",
      }
      h1.NvimTreeSeparator = {
        bg = "NONE",
        fg = "NONE",
        blend = 0,
      }
    end,
    on_colors = function(colors)
      colors.bg = "#11121F"
    end,
  },
}
