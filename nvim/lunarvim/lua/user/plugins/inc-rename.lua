local M = {}

M.setup = function()
  require("inc_rename").setup {
    cmd_name = "IncRename"
  }
end

return M
