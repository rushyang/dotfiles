-- General settings

local g = vim.g
local o = vim.opt

-- Set runtime path:
vim.o.runtimepath = vim.o.runtimepath .. ',~/.local/bin/' .. ',/usr/bin/'

-- Defining python explicitly
g.python3_host_prog = '/usr/bin/python'
vim.cmd('filetype plugin indent on')

-- Enable syntax detection according to filetype
o.syntax = 'on'
o.formatoptions = o.formatoptions - 'cro'
o.shortmess = o.shortmess - 'S'
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.shiftround = true
o.expandtab = true
o.numberwidth = 1
o.smartindent = true
o.autowrite = true
o.autoread = true
vim.o.tabline = tabTitle

-- o.nocompatible = true --nvim is always nocompatible
o.hidden = true
o.backspace = o.backspace + 'indent,eol,start'
o.confirm = true

-- Makes nvim faster with noruler and noshowcmd
o.ruler = false
o.showcmd = true
o.wrap = false                      -- By Default set wrap off
o.linebreak = true                  -- Don't break words at end of line while wrap is on
o.visualbell = false
o.number = true
o.swapfile = false
o.mouse = o.mouse + 'a'

-- Set vertical split as default
o.diffopt = o.diffopt + 'vertical'
o.splitright = true
o.splitbelow = true

-- will buffer screens instead of updating. ttyfast and lazyredraw makes buffer update while scrolling bit faster
o.lazyredraw = false
o.termguicolors = true
o.ttyfast = true

-- Control the behavior of search (:s) commands in real time with split below
o.inccommand = 'split'

-- Search Settings
o.ignorecase = true
o.smartcase = true
o.incsearch = true

-- A comma-separated list of options for Insert mode completion ins-completion
o.completeopt = o.completeopt + 'preview,menu'

-- When 'wildmenu' is on, command-line completion operates in an enhanced	mode.
o.wildmenu = true
o.wildmode = 'full,longest,list'

-- set cursorline for highlighting the cursor
o.cursorline = true
o.wildignore = '*.pyc,*.swp,.git,**/migrations/**,**/beans/**'

-- folding settings:
o.foldmethod = 'syntax'
o.foldnestmax = 10
o.foldenable = false
o.foldlevel = 1

-- Paste Toggle
o.pastetoggle = '<F4>'
