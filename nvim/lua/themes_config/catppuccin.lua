require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "bold" },
        loops = {},
        functions = { "bold" },
        keywords = { "bold", "italic" },
        strings = {},
        variables = {},
        numbers = { "bold" },
        booleans = { "bold" },
        properties = {},
        types = { "bold","underline" },
        operators = {},
    },
    color_overrides = {
        all = {
            text = "#bfbdae",
            -- Below aligns it a bit with tokyonight
            mauve = "#bb9af7",
            flamingo = "#9d7cd8",
            peach = "#ff9e64",
            lavender = "#3cbdb0",
            green ="#71ad45",
            -- overlay2 = "#5c6694"
        },
        latte = {
            -- base = "#ff0000",
            -- mantle = "#242424",
            -- crust = "#474747",
        },
        frappe = {},
        macchiato = {},
        mocha = {},
    },
    custom_highlights = function(colors)
        return{
            -- Light up Telescope
            TelescopePreviewBorder = { fg = '#db4b4b' },
            TelescopePreviewTitle = { fg  = colors.teal },
            TelescopeResultsBorder =  { fg  = colors.peach },
            TelescopeResultsTitles =  { fg  = colors.red },
            TelescopeMatching = { fg  = colors.blue },
            TelescopePromptTitle = { fg = '#1abc9c' },
            TelescopePromptBorder = { fg = '#1abc9c' },
           }
        end,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = false,
        markdown = true,
        telescope = { enabled = true },
        flash = true,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin-mocha"
