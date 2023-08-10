-- CoC specific config or options
-- local g = vim.g
-- Python linters and node path
-- g.coc_python_path = '/usr/bin/python3'
vim.env.COC_PYTHON_FLAKE8 = '/home/apollo/.local/bin/flake8'
vim.cmd[[autocmd FileType python let g:coc_linters = {'python': { 'command': 'flake8' }}]]
vim.fn['coc#config']('python.pipPath', '/usr/bin/pip')
-- vim.g.coc_preferences = {
--     pipPath = '/usr/bin/pip3',
-- }
