-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

require("telescope").load_extension("projects")
local jdtls = require("functions.jdtls")

local java_filetypes = { "java" }

vim.api.nvim_create_autocmd("FileType", {
  pattern = java_filetypes,
  callback = jdtls.setup_jdtls,
})
