local noice = require("user.plugins.noice")
local tokyonight = require("user.plugins.tokyonight")
local notify = require("user.plugins.nvim-notify")
local typescript_tools = require("user.plugins.typescript-tools")
local inc_rename = require("user.plugins.inc-rename")
local smooth_cursor = require("user.plugins.smooth-cursor")
local mini_animate = require("user.plugins.mini-animate")
local windows = require("user.plugins.windows")

lvim.plugins = {
  { "windwp/nvim-ts-autotag",      config = true },
  { "windwp/nvim-autopairs",       config = true },
  { "norcalli/nvim-colorizer.lua", config = true },
  { "folke/flash.nvim",            config = true },
  { "CRAG666/code_runner.nvim",    config = true },
  { "artur-shaik/jc.nvim",         config = true },
  { "simaxme/java.nvim",           config = true },
  -- { "edluffy/specs.nvim",          config = true },
  -- { "karb94/neoscroll.nvim",       config = true },

  {
    "gen740/SmoothCursor.nvim",
    config = function() smooth_cursor.setup() end
  },
  {
    "smjonas/inc-rename.nvim",
    config = function() inc_rename.setup() end
  },
  {
    "folke/noice.nvim",
    config = function() noice.setup() end
  },
  {
    "rcarriga/nvim-notify",
    config = function() notify.setup() end
  },
  {
    "folke/tokyonight.nvim",
    config = function() tokyonight.setup() end
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    config = function() typescript_tools.setup() end
  },
  -- {
  --   "echasnovski/mini.animate",
  --   config = function() mini_animate.setup() end
  -- },
  -- {
  --   "anuvyklack/windows.nvim",
  --   config = function() windows.setup() end
  -- },

  { "styled-components/vim-styled-components" },
  { "mg979/vim-visual-multi" },
  { "MunifTanjim/nui.nvim" },
  { "puremourning/vimspector" },
  { "othree/xml.vim" },
  { "mfussenegger/nvim-jdtls" },
  { "markwoodhall/vim-codelens" }

  -- { "anuvyklack/middleclass" },
  -- { "anuvyklack/animation.nvim" },
  -- {"williamboman/nvim-lsp-installer", config = true },
}
