if vim.fn.has('termguicolors') == 1 then
    vim.o.termguicolors = true
end

vim.g.sonokai_style = 'maia' -- andromeda, default, shusia, maia, atlantis,
-- vim.g.sonokai_style = 'shusia'
vim.g.sonokai_better_performance = 1

vim.g.sonokai_menu_selection_background = 'blue' -- blue/green/red

vim.g.sonokai_enable_italic = 1
vim.cmd('colorscheme sonokai')
vim.g.lightline = {colorscheme = 'sonokai'}
