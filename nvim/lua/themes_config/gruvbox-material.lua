vim.g.gruvbox_material_background = 'hard' -- soft/medium/hard
vim.g.gruvbox_material_show_eob = 1
vim.g.gruvbox_enable_italic = 1
vim.g.gruvbox_material_current_word = 'bold'
vim.g.gruvbox_material_show_eob = 0
vim.g.gruvbox_material_dim_inactive_windows =  0
vim.g.gruvbox_material_ui_contrast = 'high' --'low', 'high'
vim.g.gruvbox_material_menu_selection_background = yellow -- `'grey'`, `'red'`, `'orange'`, `'yellow'`, `'green'`,    `'aqua'`, `'blue'`, `'purple'`
vim.g.gruvbox_material_cursor = 'red'
vim.g.gruvbox_material_float_style = 'dim' -- 'dim', 'bright'
vim.g.gruvbox_material_better_performance = 1
vim.cmd [[ colorscheme gruvbox-material ]]
vim.cmd([[highlight NormalNC guibg=NONE ctermbg=NONE]]) --Useful while using gruvbox-material theme to make both active and inactive pane act same (Not dimming inactive pane - despite of already disabling in theme config)
vim.cmd([[highlight WinSeparator guibg=NONE guifg=#3c3836]]) -- make the separator blend better
