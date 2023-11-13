-- Enable termguicolors if supported
if vim.fn.has('termguicolors') == 1 then
    vim.o.termguicolors = true
end

-- Set background to light
vim.cmd('set background=dark')

-- Configure Everforest theme settings
vim.g.everforest_background = 'hard'
vim.g.everforest_better_performance = 1

-- Set colorscheme to Everforest
vim.cmd('colorscheme everforest')

-- Configure Lightline colorscheme
vim.g.lightline = { colorscheme = 'everforest' }
