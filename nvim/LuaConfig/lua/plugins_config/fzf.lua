-- fzf layout settings:
local g = vim.g
local e = vim.env
g.fzf_layout = { window = { width = 0.9, height = 0.6 } }              -- Set the fzf layout options as a Lua table
e.BAT_THEME = 'Nord'
g.fzf_preview_window = 'right:60%'                                     -- Set the fzf preview window options
