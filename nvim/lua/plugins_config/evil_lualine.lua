-- Eviline config for lualine
-- Heavily modified as per needs. Original Author and credit to: shadmansaleh and glepnir
local lualine = require('lualine')

-- Color table for highlights
-- stylua: ignore
local colors = {
  bg       = '#202328',
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67',
}

local function dynamic_mode_color()
  -- auto change color according to neovims mode
  local mode_color = {
    n = colors.blue,
    i = colors.red,
    v = colors.green,
    [''] = colors.blue,
    V = colors.orange,
    c = colors.magenta,
    no = colors.red,
    s = colors.orange,
    S = colors.orange,
    [''] = colors.orange,
    ic = colors.yellow,
    R = colors.violet,
    Rv = colors.violet,
    cv = colors.red,
    ce = colors.red,
    r = colors.cyan,
    rm = colors.cyan,
    ['r?'] = colors.cyan,
    ['!'] = colors.red,
    t = colors.red,
  }
  return { fg = mode_color[vim.fn.mode()] }
end

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    component_separators = '',
    section_separators = '',
    theme = 'auto',
    globalstatus = false,
   -- component_separators = { left = '', right = '' },
      -- We are going to use lualine_c an lualine_x as left and
      -- right section. Both are highlighted by c theme .  So we
      -- are just setting default looks o statusline
      -- normal = { c = { fg = colors.fg, bg = colors.bg } },
      -- inactive = { c = { fg = colors.fg, bg = colors.bg } },
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
    -- lualine_z = {
    --     { 'location', color =
    --     'function',
    --     dynamic_mode_color,
    --     bg = '#202328'},
    -- },
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {
      function()
        return '▊'
      end,
      _Get_absolute_path,
    },
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x at right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  function()
    return '▊'
  end,
  -- color = { fg = colors.blue }, -- Sets highlighting of component
  color = dynamic_mode_color,
  padding = { left = 0, right = 1 }, -- We don't need space before this
}

ins_left {
  -- mode component
  function()
    return '💻'
  end,
  color = dynamic_mode_color,
  padding = { left = 1, right = 1 },
}

ins_left {
  'location',
  color = dynamic_mode_color,
  padding = { left = 1, right = 1 },
}

ins_left {
  -- 'filename',
  _Get_absolute_path,
  cond = conditions.buffer_not_empty,
  color = dynamic_mode_color,
  padding = { left = 1, right = 0 },
}

ins_right { 'progress', color = dynamic_mode_color }

ins_right {
  -- filesize component
  'filesize',
  color = dynamic_mode_color,
  cond = conditions.buffer_not_empty,
  padding = { left = 0, right = 1 },
}

ins_left {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
  },
}

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left {
  function()
    return '%='
  end,
}

ins_left {
  -- Lsp server name .
  function()
    -- local msg = 'No Active Lsp'
    local msg = ''
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  icon = ' LSP:',
  color = { fg = '#ffffff', gui = 'bold' },
}

-- Add components to right sections
ins_right {
  'o:encoding', -- option component same as &encoding in viml
  fmt = string.upper,
  cond = conditions.hide_in_width,
  color = dynamic_mode_color ,
}

ins_right {
  'fileformat',
  fmt = string.upper,
  icons_enabled = true, -- I think icons are cool but Eviline doesn't have them.
  color = dynamic_mode_color ,
}

ins_left{
  _Get_git_tag,
  color = { fg = colors.blue },
  padding = { left = 1 },
}

ins_left {
  'branch',
  icon = '',
  color = { fg = colors.violet, gui = 'bold' },
}

ins_right {
  'diff',
  symbols = { added = ' ', modified = '? ', removed = ' ' },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
}

ins_right {
  function()
    return '▊'
  end,
  color = dynamic_mode_color,
  padding = { left = 1, right = 0 },
}

-- Now don't forget to initialize lualine
lualine.setup(config)
