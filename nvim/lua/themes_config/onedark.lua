-- Lua
require('onedark').setup {
    style = 'warmer', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    term_colors = true, -- Change terminal color as per the selected theme style

    -- toggle theme style ---
    toggle_style_key = "<C-Space>s", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = {'darker', 'deep', 'warmer'}, -- List of styles to toggle between

    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Default color overrides
    colors = {
        purple = "#8c68ba", -- Making defualt purple little more darker
        fg = "#a0a8b7",
        -- fg = "#d4c5a7",
        -- red = "#f65866",
    },
    -- Lualine options --
    lualine = {
        transparent = true, -- lualine center bar transparency
    },

    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = false,    -- use background color for virtual text
    },
}
require('onedark').load()
