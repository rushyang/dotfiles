local function get_git_tag()
    local git_tag = vim.fn.system('git tag --points-at HEAD 2>/dev/null | xargs'):gsub("\n", "")
    return git_tag ~= "" and git_tag or ""
end

local function get_absolute_path()
    return vim.fn.expand('%:p')
end

require('lualine').setup({
    options = {
        theme = 'tokyonight',
        component_separators = '',
        section_separators = '',
        icons_enabled = true,
        globalstatus = false,
    },
    sections = {
        lualine_a = {
            { 'mode', color = { gui = 'bold' } },
        },
        lualine_b = {
            { 'branch' },
            { 'diff', colored = false },
        },
        lualine_c = {
            'function',
            get_git_tag,
            -- { 'filename', file_status = true },
            { 'diagnostics' },
        },
        lualine_x = {
            'function',
            get_absolute_path,
            -- 'filetype',
            'encoding',
            'fileformat',
        },
        lualine_y = { 'progress' },
        lualine_z = {
            { 'location', color = { gui = 'bold' } },
        },
    },
    inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {
      function()
        return '▊'
      end,
      get_absolute_path,
      },
    },
    -- tabline = {
    --     lualine_a = {
    --         {
    --             'buffers',
    --             buffers_color = { active = 'lualine_b_normal' },
    --         },
    --     },
    --     lualine_z = {
    --         {
    --             'tabs',
    --             tabs_color = { active = 'lualine_b_normal' },
    --         },
    --     },
    -- },
    extensions = { 'quickfix', 'nvim-tree' },
})
