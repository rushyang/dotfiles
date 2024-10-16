-- option 1: multiple indent colors
-- local highlight = {
--     "rainbowred",
--     "rainbowyellow",
--     "rainbowblue",
--     "rainboworange",
--     "rainbowgreen",
--     "rainbowviolet",
--     "rainbowcyan",
-- }
--
-- local hooks = require "ibl.hooks"
-- hooks.register(hooks.type.highlight_setup, function()
--     vim.api.nvim_set_hl(0, "rainbowred", { fg = "#e06c75" })
--     vim.api.nvim_set_hl(0, "rainbowyellow", { fg = "#e5c07b" })
--     vim.api.nvim_set_hl(0, "rainbowblue", { fg = "#61afef" })
--     vim.api.nvim_set_hl(0, "rainboworange", { fg = "#d19a66" })
--     vim.api.nvim_set_hl(0, "rainbowgreen", { fg = "#98c379" })
--     vim.api.nvim_set_hl(0, "rainbowviolet", { fg = "#c678dd" })
--     vim.api.nvim_set_hl(0, "rainbowcyan", { fg = "#56b6c2" })
-- end)
--
-- require("ibl").setup { indent = { highlight = highlight } }

-- option 2: white spaces only
-- local highlight = {
--     "cursorcolumn",
--     "whitespace",
-- }
--
-- require("ibl").setup { indent = { highlight = highlight, char = "" },
--     whitespace = {
--         highlight = highlight,
--         remove_blankline_trail = false,
--     },
--     scope = { enabled = false },
-- }

-- option 3: rainbow-delimeters.nvim integration
-- show the context where your cursor is
local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}
local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end)

vim.g.rainbow_delimiters = { highlight = highlight }
require("ibl").setup { scope = { highlight = highlight } }

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
