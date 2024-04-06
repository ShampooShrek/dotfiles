local noice = require("user.plugins.noice")
local tokyonight = require("user.plugins.tokyonight")

lvim.plugins = {
  { "windwp/nvim-ts-autotag",      config = true },
  {
    "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup {
        cmd_name = "IncRename"
      }
    end
  },
  { "windwp/nvim-autopairs",       config = true },
  { "norcalli/nvim-colorizer.lua", config = true },
  { "mg979/vim-visual-multi" },
  { "folke/flash.nvim",            config = true },
  {
    "folke/noice.nvim",
    config = function() noice.setup() end
  },
  { "MunifTanjim/nui.nvim" },
  {
    "rcarriga/nvim-notify",
    config = function()
      local notify = require("notify")
      require("notify").setup {
        background_colour = "#24283b"
      }
    end
  },
  {
    "folke/tokyonight.nvim",
    config = function() tokyonight.setup() end
  },
  { "CRAG666/code_runner.nvim", config = true }
}
