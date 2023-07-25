-- Highlight Normal - Sets background to NONE
vim.cmd([[highlight Normal ctermbg=NONE guibg=NONE]])

-- Highlight NonText
vim.cmd([[highlight NonText guibg=NONE ctermbg=NONE]])

-- Auto command for TermOpen
vim.cmd([[autocmd TermOpen * setlocal nonumber norelativenumber]])

-- Set g:neodark#solid_vertsplit to 1
-- vim.g.neodark_solid_vertsplit = "1"

-- Highlight Visual
vim.cmd([[highlight Visual guifg=#000000 guibg=#FFFFFF gui=none]])

-- Set $NVIM_TUI_ENABLE_TRUE_COLOR to 1
vim.env["NVIM_TUI_ENABLE_TRUE_COLOR"] = "1"

-- Highlight LineNr
vim.cmd([[highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg='#585858' guibg=NONE]])

-- Check if not running in GUI mode and set t_Co to 256
if not vim.fn.has('gui_running') then
  vim.cmd('set t_Co=256')
end

-- Diffmode
-- Just Changed "text" within lines
vim.cmd('highlight DiffText ctermfg=NONE ctermbg=NONE guifg=Yellow1 guibg=Red4')

-- Lines
vim.cmd('highlight DiffChange ctermfg=NONE ctermbg=NONE guifg=Grey100 guibg=Grey27')

-- To change the background of removed lines to red
vim.cmd('highlight DiffDelete ctermfg=NONE ctermbg=NONE guifg=red guibg=black')

-- To change the background of removed lines
vim.cmd('highlight DiffAdd ctermfg=NONE ctermbg=NONE guifg=LightCyan1 guibg=DarkGreen')