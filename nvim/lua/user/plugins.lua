local noice = require("user.plugins.noice")
local tokyonight = require("user.plugins.tokyonight")

lvim.plugins = {
  { "styled-components/vim-styled-components" },
  { "windwp/nvim-ts-autotag",                 config = true },
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
      require("notify").setup {
        background_colour = "#24283b"
      }
    end
  },
  {
    "folke/tokyonight.nvim",
    config = function() tokyonight.setup() end
  },
  { "CRAG666/code_runner.nvim", config = true },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require("typescript-tools").setup {
        settings = {
          tsserver_plugins = {
            -- for TypeScript v4.9+
            "@styled/typescript-styled-plugin",
            -- or for older TypeScript versions
            -- "typescript-styled-plugin",
          },
        },
      }
    end,
  },
  { "anuvyklack/middleclass" },
  { "anuvyklack/animation.nvim" },
  {
    "anuvyklack/windows.nvim",
    config = function()
      vim.o.winwidth = 10
      vim.o.winminwidth = 10
      vim.o.equalalways = false
      require('windows').setup()
    end
  },
  { "edluffy/specs.nvim", config = true },
  {
    "karb94/neoscroll.nvim", config = true
  },
  {
    "echasnovski/mini.animate",
    config = function()
      local mouse_scrolled = false
      for _, scroll in ipairs({ "Up", "Down" }) do
        local key = "<ScrollWheel" .. scroll .. ">"
        vim.keymap.set({ "", "i" }, key, function()
          mouse_scrolled = true
          return key
        end, { expr = true })
      end

      local animate = require("mini.animate")
      return {
        resize = {
          timing = animate.gen_timing.linear({ duration = 100, unit = "total" }),
        },
        scroll = {
          timing = animate.gen_timing.linear({ duration = 150, unit = "total" }),
          subscroll = animate.gen_subscroll.equal({
            predicate = function(total_scroll)
              if mouse_scrolled then
                mouse_scrolled = false
                return false
              end
              return total_scroll > 1
            end,
          }),
        },
      }
    end
  }
}
