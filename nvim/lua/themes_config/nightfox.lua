-- Default options
require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,     -- Disable setting background
    terminal_colors = true,  -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,    -- Non focused panes set to alternative background
    module_default = false,   -- Default enable value for modules
    colorblind = {
      enable = false,        -- Enable colorblind support
      simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
      severity = {
        protan = 0,          -- Severity [0,1] for protan (red)
        deutan = 0,          -- Severity [0,1] for deutan (green)
        tritan = 0,          -- Severity [0,1] for tritan (blue)
      },
    },
    styles = {               -- Style to be applied to different syntax groups
      comments = "italic",     -- Value is any valid attr-list value `:help attr-list`
      conditionals = "bold",
      constants = "NONE",
      functions = "underline",
      keywords = "italic,bold",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      diagnostic = false,   -- Disabling default diagnostics to be able to override LSPs from themes_overrides
    },
  },
  palettes = {
    nightfox = {
      -- bg1 = "#0f111a",
      bg1 = "#000000",
      fg1 = "#d8d3ba",
      pink = "#8c68ba",
      blue = "#74a0db",
      sel1 = "#005f87",
      -- sel1 = "#0087af",
      magenta = "#8c68ba",
    },
    carbonfox = {
      -- bg1 = "#0f111a",
      -- bg1 = "#000000",
      -- fg1 = "#bab6a2",
      fg1 = "#aba791",
      pink = "#8c68ba",
      fg3     = "#5f85b8", --Tabby color set to blue
      -- blue = "#74a0db",
      sel1 = "#005f87",
      -- sel1 = "#0087af",
      magenta = "#8c68ba",
    },
    duskfox = {
      bg1 = "#0f111a",
      fg1 = "#d8d3ba",
      pink = "#8c68ba",
      blue = "#74a0db",
      magenta = "#8c68ba",
    },
  },
  specs = {
    carbonfox = {
      syntax = {
        number = "#f4a261",
      }
    }
  },
  groups = {},
})

-- vim.cmd("colorscheme nightfox")
vim.cmd("colorscheme carbonfox")
-- vim.cmd("colorscheme duskfox")
