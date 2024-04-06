local nvim_tree_config = lvim.builtin.nvimtree.setup

nvim_tree_config.update_focused_file = {
  enable = false,
  update_root = false,
  ignore_list = {},
}
nvim_tree_config.sync_root_with_cwd = false
lvim.builtin.nvimtree.setup = nvim_tree_config
