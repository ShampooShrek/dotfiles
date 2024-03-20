local wezterm = require("wezterm")

local config = {}

-- Windows --
-- config.default_prog = { "C:/Users/luizg/AppData/Local/Microsoft/WindowsApps/Microsoft.PowerShell_8wekyb3d8bbwe/pwsh.exe", "-l" }
-- config.default_cwd = "C:/Users/luizg/Programming"

config.color_scheme = "tlh"

config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold" })
config.font_size = 9

config.colors = { background = "#1C1C2C", cursor_bg = "#ffffff" }
config.window_background_image = "./NixOS.jpg"

config.enable_scroll_bar = false
config.enable_tab_bar = false

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0
}

return config
