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
      format = {
        -- conceal: (default=true) This will hide the text in the cmdline that matches the pattern.
        -- view: (default is cmdline view)
        -- opts: any options passed to the view
        -- icon_hl_group: optional hl_group for the icon
        -- title: set to anything or empty string to hide
        cmdline = { pattern = "^:", icon = "_✏️ ", lang = "vim" },
        search_down = { kind = "search", pattern = "^/", icon = "🔎 ", lang = "regex" },
        search_up = { kind = "search", pattern = "^%?", icon = "🔎 ", lang = "regex" },
        filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
        lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "", lang = "lua" },
        -- help = { pattern = "^:%s*he?l?p?%s+", icon = "" },
        input = { view = "cmdline_input", icon = "󰥻 " }, -- Used by input()
        -- lua = false, -- to disable a format, set to `false`
      },
  },
  popupmenu = {
    enabled = true, -- enables the Noice popupmenu UI
    ---@type 'nui'|'cmp'
    backend = "nui", -- backend to use to show regular cmdline completions
    ---@type NoicePopupmenuItemKind|false
    -- Icons for completion item kinds (see defaults at noice.config.icons.kinds)
    kind_icons = {}, -- set to `false` to disable icons
  },
  messages = {
    -- NOTE: If you enable messages, then the cmdline is enabled automatically.
    -- This is a current Neovim limitation.
    enabled = false, -- enables the Noice messages UI
    view = "notify", -- default view for messages
    view_error = "notify", -- view for errors
    view_warn = "notify", -- view for warnings
    view_history = "messages", -- view for :messages
    view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
  },
  -- Clean cmdline_popup
  -- views = {
  --   cmdline_popup = {
  --     border = {
  --       style = "none",
  --       padding = { 2, 3 },
  --     },
  --     filter_options = {},
  --     win_options = {
  --       winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
  --     },
  --   },
  -- },
  -- Trying to skip write messages in noice
  -- routes = {
  --   {
  --     filter = {
  --       event = "msg_show",
  --       kind = "",
  --       find = "written",
  --     },
  --     opts = { skip = true },
  --   },
  -- },
  -- Below is commented to check later. Its erroring out
  -- views = {
  --   cmdline_popup = {
  --     border = {
  --       style = "none",
  --       padding = { 2, 3 },
  --     },
  --     filter_options = {},
  --     win_options = {
  --       winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
  --     },
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
-- require("notify").setup({
--   level = "info",
--   background_colour = "#000000",
--   timeout = 900,
--   top_down = "true",
--   animate = true,
--   fps = 45,
--   icons = {
--     DEBUG = "",
--     ERROR = "",
--     INFO = "",
--     TRACE = "✎",
--     WARN = ""
--   },
-- })
require("telescope").load_extension("noice")
