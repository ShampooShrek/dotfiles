-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Normal mode keybindings

local map = LazyVim.safe_keymap_set

vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true })
vim.keymap.set("n", "<M-h>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-l>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-s>", ":w!<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-b>", ":lua CloseBuffers()<CR>", { noremap = true, silent = true })

map("n", "<leader>q", ":q<CR>", { desc = "Close Buffer" })
map("n", "<leader>Q", ":qa<CR>", { desc = "Close Window" })
map("n", "<leader>c", LazyVim.ui.bufremove, { desc = "Delete Buffer" })
map("n", "gl", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

vim.keymap.set("v", "<Tab>", "=", { noremap = true, silent = true })

-- vim.keymap.set(
--   "n",
--   "<M-Enter>",
--   ':lua require("user.utils").toggle_full_screen()<CR>',
--   { noremap = true, silent = true }
-- )
-- vim.keymap.set(
--   "n",
--   "<M-t>",
--   ':lua require("user.utils").toggle_neovide_transparence()<CR>',
--   { noremap = true, silent = true }
-- )
