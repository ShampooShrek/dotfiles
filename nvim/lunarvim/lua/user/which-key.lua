function CloseBuffers(closeCurrent)
  vim.cmd(":BufferLineCloseLeft")
  vim.cmd(":BufferLineCloseRight")
  if closeCurrent then
    vim.cmd(":BufferKill")
  end
end

function QuitAll()
  CloseBuffers(true)
  vim.cmd(":qa")
end

lvim.builtin.which_key.mappings["bc"] = {
  ":lua CloseBuffers(false)<cr>", "Close All Buffers Except Current"
}
lvim.builtin.which_key.mappings["bC"] = {
  ":lua CloseBuffers(true)<cr>", "Close All Buffers"
}

lvim.builtin.which_key.mappings["Q"] = {
  ":lua QuitAll()<cr>", "Quit All"
}

lvim.builtin.which_key.mappings["r"] = {
  ":IncRename ", "Rename"
}
