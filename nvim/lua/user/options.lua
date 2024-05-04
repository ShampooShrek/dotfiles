-- Install xclip on linux
vim.g.clipboard = {
  copy = {
    ["+"] = "xclip -i -selection clipboard",
    ["*"] = "xclip -i -selection clipboard",
  },
  paste = {
    ["+"] = "xclip -o -selection clipboard",
    ["*"] = "xclip -o -selection clipboard",
  },
}

lvim.colorscheme = "tokyonight"
lvim.format_on_save.enabled = true

vim.opt.guifont = "JetBrainsMono Nerd Font:h9"
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- Neovide Config --
vim.g.neovide_fullscreen = true
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_animate_command_line = true
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_cursor_vfx_mode = "pixiedust"

vim.g.neovide_cursor_vfx_particle_lifetime = 2
vim.g.neovide_cursor_vfx_particle_density = 50.0
