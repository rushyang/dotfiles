-- Config for nvim-treesitter only
package.path = package.path .. ";/home/apollo/.config/nvim/plugged/nvim-treesitter/lua/?.lua"
require('nvim-treesitter.configs').setup({
  -- Keeping below enabled it installs parsers every time when new instance of nvim is forked (also screws with my cpu load). Hence, disabling it after first run.
  -- ensure_installed = "all";

  highlight = {
    enable = true,
    custom_captures = {
      -- ["<capture gruop>"] = "<highlight group>",
      ["keyword"] = "TSString",
    },
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

  indent = {
    enable = true
  },
})

vim.api.nvim_exec([[
  set foldmethod=expr
  set foldexpr=nvim_treesitter#foldexpr()
]], true)
