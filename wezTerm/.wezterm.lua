local wezterm = require("wezterm")

local config = {}

-- Windows --
-- config.default_prog = { "C:/Users/luizg/AppData/Local/Microsoft/WindowsApps/Microsoft.PowerShell_8wekyb3d8bbwe/pwsh.exe", "-l" }
-- config.default_cwd = "C:/Users/luizg/Programming"

config.color_scheme = "tokyonight"

config.font = wezterm.font("FiraCode Nerd Font", { weight = "Medium" })
config.font_size = 9

config.colors = { background = "#141424", cursor_bg = "#ffffff" }
-- config.window_background_image = "./NixOS.jpg"

config.background = {
  -- This is the deepest/back-most layer. It will be rendered first
  {
    source = {
      File = './NixOS.jpg',
    },
    horizontal_align = "Center",
    height = "Cover",
    width = "Cover",
  },
}

config.enable_scroll_bar = false
config.enable_tab_bar = false

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0
}

return config
