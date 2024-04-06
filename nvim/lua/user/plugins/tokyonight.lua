local M = {}


M.setup = function()
  require("tokyonight").setup {
    transparent = true,
    on_highlights = function(h1, c)
      h1.NvimTreeNormal = {
        bg = "NONE",
      }
      h1.NvimTreeNormalNC = {
        bg = "NONE"
      }
      h1.NvimTreeWinSeparator = {
        bg = "NONE",
      }
    end
  }
end


return M
