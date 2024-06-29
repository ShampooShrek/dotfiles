-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Normal mode keybindings

local map = LazyVim.safe_keymap_set

local function toggle_neovide_transparence()
  if vim.g.neovide_transparency == 1 or vim.g.neovide_transparency == nil then
    vim.g.neovide_transparency = 0.95
  else
    vim.g.neovide_transparency = 1
  end
end

local function toggle_full_screen()
  vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen
end

vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true })
vim.keymap.set("n", "<M-h>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-l>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-s>", ":w!<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-b>", ":lua CloseBuffers()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-1>", ":ToggleTerm direction=horizontal<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-3>", ":ToggleTerm direction=float<CR>", { noremap = true, silent = true })

map("n", "<leader>q", ":q<CR>", { desc = "Close Buffer" })
map("n", "<leader>Q", ":qa<CR>", { desc = "Close Window" })
map("n", "<leader>c", LazyVim.ui.bufremove, { desc = "Delete Buffer" })
map("n", "gl", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

vim.keymap.set("v", "<Tab>", "=", { noremap = true, silent = true })

map("n", "<M-Enter>", toggle_full_screen, { noremap = true, silent = true })
map("n", "<M-t>", toggle_neovide_transparence, { noremap = true, silent = true })
