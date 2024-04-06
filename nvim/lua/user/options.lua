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


lvim.colorscheme = "tokyonight-moon"

vim.opt.guifont = "JetBrainsMono Nerd Font:h40"
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

lvim.format_on_save.enabled = true
