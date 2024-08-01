-- Lua
require('onedark').setup {
    style = 'darker', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    term_colors = true, -- Change terminal color as per the selected theme style

    -- toggle theme style ---
    toggle_style_key = "<C-Space>s", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = {'darker', 'deep', 'warmer', 'cool'}, -- List of styles to toggle between

    code_style = {
        comments = 'italic',
        keywords = 'italic,bold',
        functions = 'bold',
        strings = 'none',
        variables = 'none'
    },

    -- Default color overrides
    colors = {
        purple = "#8c68ba", -- Making default purple little more darker
        -- fg = "#d8d3ba", -- Tabby color and normal text
        fg = "#aba791",
        -- fg = "#a0a8b7",
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
