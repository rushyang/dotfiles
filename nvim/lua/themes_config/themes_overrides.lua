-- Highlight Normal - Sets background to NONE
-- vim.cmd([[highlight Normal ctermbg=NONE guibg=NONE]])
-- vim.cmd([[highlight Normal ctermbg=NONE guibg=#0f111a]])
vim.cmd([[highlight Normal ctermbg=NONE guibg=#080a12]])

-- Highlight NonText
vim.cmd([[highlight NonText guibg=NONE ctermbg=NONE]])

-- End of Buffer
vim.cmd([[highlight EndOfBuffer guibg=NONE ctermbg=NONE]])

-- Sign Column
vim.cmd([[highlight SignColumn guibg=NONE ctermbg=NONE]])

-- Auto command for TermOpen
vim.cmd([[autocmd TermOpen * setlocal nonumber norelativenumber]])

-- Highlight Visual
-- vim.cmd([[highlight Visual guifg=Yellow1 guibg='#71839b' gui=none]])
vim.cmd([[highlight Visual guifg='#dbc074' guibg='#3c5372' gui=none]])

-- Set $NVIM_TUI_ENABLE_TRUE_COLOR to 1
vim.env["NVIM_TUI_ENABLE_TRUE_COLOR"] = "1"

-- Highlight LineNr
vim.cmd([[highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg='#585858' guibg=NONE]])

-- Check if not running in GUI mode and set t_Co to 256
if not vim.fn.has('gui_running') then
  vim.cmd('set t_Co=256')
end

-- Diffmode

-- List of invert themes to check
local invert_themes = { "neon" }

-- Default block
if vim.fn.index(invert_themes, vim.g.colors_name) ~= -1 then
  -- Lines
  vim.cmd('highlight DiffChange ctermfg=NONE ctermbg=NONE guifg=black guibg=Grey82')
  -- To change the background of removed lines to red
  vim.cmd('highlight DiffDelete ctermfg=NONE ctermbg=NONE guifg=black guibg=red')
  -- To change the background of removed lines
  vim.cmd('highlight DiffAdd ctermfg=NONE ctermbg=NONE guifg=DarkGreen guibg=LightCyan1')
  -- Just Changed "text" within lines
  vim.cmd('highlight DiffText guifg=DarkRed guibg=Yellow1')
else -- invert_themes block
  -- Lines
  vim.cmd('highlight DiffChange ctermfg=NONE ctermbg=NONE guifg=Grey82 guibg=black')
  -- To change the background of removed lines to red
  vim.cmd('highlight DiffDelete ctermfg=NONE ctermbg=NONE guifg=red guibg=black')
  -- To change the background of removed lines
  vim.cmd('highlight DiffAdd ctermfg=NONE ctermbg=NONE guifg=LightCyan1 guibg=DarkGreen')
-- Just Changed "text" within lines
vim.cmd('highlight DiffText guifg=Yellow1 guibg=DarkRed')
end

-- Override LspDiagnostics colors
  -- hi DiagnosticError guifg=#43616b
vim.cmd [[
  hi DiagnosticError guifg=#806425
  hi DiagnosticWarn guifg=#6c6c6c
  hi DiagnosticInfo guifg=#005f87
  hi DiagnosticHint guifg=#00af87
]]
