-- init.lua

require('nvim-tree').setup({
  view = {
    width = 30,
    side = 'left',
    auto_resize = true,
    mappings = {
      custom_only = true,
      list = {
        { key = { "<C-d>" }, cb = require('nvim-tree.config').nvim_tree_toggle({}) }
      }
    }
  },
  hide_root_folder = true,
  nvim_tree_hide_dotfiles = 1
})
