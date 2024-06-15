local utils = require("user.utils")

lvim.keys.normal_mode["<C-a>"] = "ggVG"
lvim.keys.normal_mode["<M-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<M-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<C-s>"] = ":w!<CR>"
lvim.keys.normal_mode["<M-b>"] = ":lua CloseBuffers()<cr>"
lvim.keys.normal_mode["<C-f>"] = "<PageDown>"
lvim.keys.normal_mode["<M-Enter>"] = ':lua require("user.utils").toggle_full_screen()<CR>'
lvim.keys.normal_mode["<M-t>"] = ':lua require("user.utils").toggle_neovide_transparence()<CR>'
lvim.keys.visual_mode["<Tab>"] = "="


local opts = { noremap = true, silent = true }
vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
vim.keymap.set("n", "gI", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)

vim.keymap.set("n", "gl", function()
  local float = vim.diagnostic.config().float

  if float then
    local config = type(float) == "table" and float or {}
    config.scope = "line"

    vim.diagnostic.open_float(config)
  end
end, opts)
