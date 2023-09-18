require("noice").setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
  cmdline = {
      enabled = true, -- enables the Noice cmdline UI
      view = "cmdline_popup", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
      -- view = "cmdline_popup", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
      opts = {}, -- global options for the cmdline. See section on views
  },
  popupmenu = {
  enabled = true, -- enables the Noice popupmenu UI
  ---@type 'nui'|'cmp'
  backend = "nui", -- backend to use to show regular cmdline completions
  ---@type NoicePopupmenuItemKind|false
  -- Icons for completion item kinds (see defaults at noice.config.icons.kinds)
  kind_icons = {}, -- set to `false` to disable icons
  },
  -- messages = {
  --   -- NOTE: If you enable messages, then the cmdline is enabled automatically.
  --   -- This is a current Neovim limitation.
  --   enabled = true, -- enables the Noice messages UI
  --   view = "notify", -- default view for messages
  --   view_error = "notify", -- view for errors
  --   view_warn = "notify", -- view for warnings
  --   view_history = "messages", -- view for :messages
  --   view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
  -- },
  -- views = {
  --   cmdline_popup = {
  --     position = {
  --       row = 5,
  --       col = "50%",
  --     },
  --     size = {
  --       width = 60,
  --       height = "auto",
  --     },
  --   },
  --   popupmenu = {
  --     relative = "editor",
  --     position = {
  --       row = 8,
  --       col = "50%",
  --     },
  --     size = {
  --       width = 60,
  --       height = 10,
  --     },
  --     border = {
  --       style = "rounded",
  --       padding = { 0, 1 },
  --     },
  --     win_options = {
  --       winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
  --     },
  --   },
  -- },
})
require("notify").setup({
  level = "info",
  background_colour = "#000000",
  timeout = 900,
  top_down = "true",
  -- animate = true,
  fps = 45,
  icons = {
    DEBUG = "",
    ERROR = "",
    INFO = "",
    TRACE = "✎",
    WARN = ""
  },
})
