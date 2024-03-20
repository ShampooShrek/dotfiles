local M = {}

M.setup = function()
  require("noice").setup {
    views = {
      cmdline_popup = {
        position = {
          row = 8,
          col = "50%",
        },
        size = {
          width = 70,
          height = "auto",
        },
      }
    }
  }
end

return M
