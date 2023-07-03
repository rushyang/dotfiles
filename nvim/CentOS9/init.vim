" NeoVim Configuration File
syntax on
filetype plugin indent on

" Defining python path explicitly
let g:python3_host_prog = '/usr/bin/python3'

" General config
set formatoptions-=cro
set shortmess-=S
set ts=3
set sw=3
set sts=3
set numberwidth=1
set smartindent
set expandtab
set nocompatible
set hidden
set backspace=indent,eol,start
set confirm
set ruler "cursorline cursorcolumn
set nowrap
set vb " turn off beep sound
set number
set noswapfile
set mouse=a
" set relativenumber
" Commenting noshowmode as its being taken care by lightline now
" set noshowmode
" set clipboard=unnamed
" set clipboard=unnamedplus
set inccommand=split
" set guicursor=""
" set showtabline=0
" Source on the go!
nnoremap <C-Space>s :source $MYVIMRC<CR>
" https://jeancharles.quillet.org/posts/2022-03-02-Practical-introduction-to-fugitive.html
set foldmethod=syntax


" Highlight current line (CursorLine) - 5 lines below source:https://medium.com/usevim/highlight-the-current-line-b6ff8af798c7
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

" Set vertical split as default
set diffopt+=vertical

" Split to right and below by default
set splitright
set splitbelow

" will buffer screens instead of updating
set lazyredraw
set ttyfast

" Disable scratch pad
set completeopt-=preview

" To make nvim faster, not exactly sure though.
set noshowcmd noruler

" Navigate between split windows quickly
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>
" nnoremap <c-j> <c-d>
" nnoremap <c-k> <c-u>
" nnoremap <c-l> <c-w>w
" nnoremap <c-h> <c-w>W

" For command mode auto complete
set wildmenu
set wildmode=longest:full,list:full

"Search settings
set ignorecase
set smartcase
set incsearch

" change insert mode key
inoremap jj <Esc>`^
inoremap kk <Esc>`^

" Better copy & paste
" When you want to paste large blocks of code into vim, press F4 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F4>

" Rebind <Leader> key
" I like to have it here because it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
"let mapleader = ","
let mapleader = " "

nmap <silent> <F5> :set spell!<CR>

" Send Text from one split window to another:
" https://vi.stackexchange.com/questions/2764/send-text-from-one-split-window-to-another
vnoremap <F6> y<c-w>wp<c-w>pgv

" Cycle through buffers
nnoremap } :bnext<CR>
nnoremap { :bprevious<CR>
nnoremap _ :bdelete<CR>
" Custom by Rushyang
nnoremap <C-t> :tabnew<CR>
" Ctrl+space and then ctrl+s to set scrollbind
nnoremap <C-Space><C-s> :set scrollbind! scrollbind?<CR>
" nnoremap <C-Space>w :NERDTreeToggle<CR>

nnoremap <c-]> :tabnext<CR>
nnoremap <c-[> :tabprevious<CR>
" nnoremap <c-n> :tabnext<CR>

" Below Line commented out by Rushyang
" nnoremap <Leader>j :tab split<CR>

nnoremap <C-Space>1 1gt
nnoremap <C-Space>2 2gt
nnoremap <C-Space>3 3gt
nnoremap <C-Space>4 4gt
nnoremap <C-Space>5 5gt
nnoremap <C-Space>6 6gt
nnoremap <C-Space>7 7gt
nnoremap <C-Space>8 8gt
nnoremap <C-Space>9 9gt
nnoremap <C-Space>h gT
nnoremap <C-Space>l gt

" Go to last active tab
" au TabLeave * let g:lasttab = tabpagenr()
" nnoremap <silent> <C-Space><Leader> :exe "tabn ".g:lasttab<cr>
" vnoremap <silent> <C-Space><Leader> :exe "tabn ".g:lasttab<cr>
" This is causing some issues as Move2Tab function has some errors - Commented out
" nnoremap <silent> <C-Space> :call Move2Tab()<cr>
" vnoremap <silent> <C-Space> :call Move2Tab()<cr>

" If terminal buffer start in insert mode
let g:isInsert=1
autocmd BufEnter * if &buftype == 'terminal' && g:isInsert == 1 | :startinsert | endif
autocmd TermEnter * :let g:isInsert=1

" New window and close windows
nnoremap <Leader>s <c-w>s
nnoremap <Leader>v <c-w>v
nnoremap <Leader>k <c-w><c-q>
nmap <Leader>ww :w<CR>
nmap <C-Space><C-q> :q<CR>
nmap <Leader><C-q> :q<CR>

" Ctrl-backspace for delete previous word
"nmap <Backspace> <c-w>

" easier moving of code blocks for indentations only
" Try to go into visual mode (v), then select several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" wild card ignores
set wildignore+=*.pyc,*.swp,.git,**/migrations/**,**/beans/**

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" this is done because when writing a comment in python code the cursur goes to column 0
inoremap # #

" Move to tab from terminal insert mode
" This is causing some issues as Move2Tab function has some errors - Commented out by Rushyang
" function! Move2Tab()
"     echo g:isInsert
"     let code = getchar()
"     if (char2nr(code) == 128 || code == 32)
"         exec "tabn ".g:lasttab
"     else
"         let char_code = nr2char(code)
"         exec "normal " . char_code . "gt"
"     endif
" endfunction

" terminal escape
" tnoremap <Leader>jj <C-\><C-n>
tnoremap <ESC> <C-\><C-n>:let g:isInsert=0<cr>
" tnoremap <C-Space> <C-\><C-n>:exe "tabn ".g:lasttab<cr>
" This is causing some issues as Move2Tab function has some errors
" tnoremap <C-Space> <C-\><C-n>:call Move2Tab()<cr>
tnoremap <C-h> <C-\><C-N><C-w>h
" Below two lines were commented out
"tnoremap <C-j> <C-\><C-N><C-w>j
"tnoremap <C-k> <C-\><C-N><C-w>k
"tnoremap <C-l> <C-\><C-N><C-w>l
"inoremap <C-h> <C-\><C-N><C-w>h<cr>i
"inoremap <C-j> <C-\><C-N><C-w>j<cr>i
"inoremap <C-k> <C-\><C-N><C-w>k<cr>i
"inoremap <C-l> <C-\><C-N><C-w>l<cr>i

" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

" terminal window below
" nnoremap <Leader>o :below 10vsp term://$SHELL<cr>i
" nnoremap <Leader>o :vsp term://$SHELL<cr>i
" nnoremap <Leader>o :sp term://zsh<cr>i

" Package Manger for vim Plugins
" >>>>>>>> Plugin defination start <<<<<<<<<
call plug#begin('~/.config/nvim/plugged')
" Copied three lines by Rushyang from:
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Aerial is the plugin that opens the outline window for skimming through the created stuff in current file for quick navigation
" Plug 'stevearc/aerial.nvim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Plug 'preservim/nerdtree'

" ultisnips config
" https://github.com/SirVer/ultisnips
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" For displaying branch on the lightline statusline below neovim
" No need of gitbranch
" Plug 'itchyny/vim-gitbranch'
" Plug 'sheerun/vim-polyglot'

" For syntax checking
" Plug 'w0rp/ale'

" Indent Plugin: https://github.com/lukas-reineke/indent-blankline.nvim
Plug 'lukas-reineke/indent-blankline.nvim'

" Lightline for vim status bar
Plug 'itchyny/lightline.vim'

" Tcomment for fast commenting and uncommenting of code - gcc for toggle comment - best ctrl+//
Plug 'tomtom/tcomment_vim'
" Other comment plugins for future reference
" https://github.com/preservim/nerdcommenterhttps://github.com/preservim/nerdcommenter
"
" Other format plugin for better formatting:
" https://github.com/sbdchd/neoformat
Plug 'sbdchd/neoformat'

" To get properties of a class
" Plug 'majutsushi/tagbar'

" to match tags
Plug 'vim-scripts/matchit.zip'

" fugitive for git integration
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-unimpaired'
" Plug 'MobiusHorizons/fugitive-stash.vim'
Plug 'tpope/vim-rhubarb'
Plug 'mhinz/vim-signify'

" Golang support for vim
" Plug 'fatih/vim-go', { 'for': 'go' }

" jedi for python completion
" Plug 'davidhalter/jedi-vim', { 'for': ['py', 'python'] }

" Neovim Coc
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'wellle/tmux-complete.vim'

" Coc extensions
" Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
" Plug 'fannheyward/coc-markdownlint', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-rls', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-java', {'do': 'yarn install --frozen-lockfile'}

" GoldenSize for split window resize automatically while switching between windows
Plug 'dm1try/golden_size'

" Alternative file manager
Plug 'francoiscabrol/ranger.vim'
" Not using below
" Plug 'rbgrouleff/bclose.vim'
Plug 'ptzz/lf.vim'
" Dependency of above lf.vim
Plug 'voldikss/vim-floaterm'
" Plug 'mcchrish/nnn.vim'

" fuzzy search
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" align text
Plug 'junegunn/vim-easy-align'

Plug 'ntpeters/vim-better-whitespace'

Plug 'kassio/neoterm'
" Plug 'airblade/vim-rooter'

" Auto pairs
Plug 'jiangmiao/auto-pairs'

" Some themes
" Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
" Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'dracula/vim'
" Plug 'EdenEast/nightfox.nvim'
" Plug 'folke/tokyonight.nvim'
Plug 'rakr/vim-one'
" Plug 'KeitaNakamura/neodark.vim'
" Plug 'rktjmp/lush.nvim', { 'as': 'lush' }

" #### Syntax Plugins ####
" typescript
" Plug 'leafgarland/typescript-vim'
" Plug 'mhartington/nvim-typescript'

" Telescope config:
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()
filetype plugin indent on    " required
syntax on
" >>>>>>>> Plugin configuration end <<<<<<<<<
"
" Disable global lf mapping: https://github.com/ptzz/lf.vim
" let g:lf_map_keys = 0

" Insert break point for python
" map T Oimport ipdb; ipdb.set_trace()  # BREAKPOINT<C-c>

" config for tagbar
" nmap <Leader>t :TagbarToggle<CR>
" let g:tagbar_autofocus = 1
" let g:tagbar_left = 1

" Rg config
" function! RipgrepFzf(query, fullscreen)
"   let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
"   let initial_command = printf(command_fmt, shellescape(a:query))
"   let reload_command = printf(command_fmt, '{q}')
"   let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
"   call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
" endfunction
" command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
"
" noremap <Leader>a :RG <C-R><C-W><CR>
" xnoremap <silent> <Leader>a y:RG <C-R>"<CR>
" noremap <Leader>a :Rg <cword><cr>

let g:ranger_map_keys = 0
let g:ranger_command_override = 'ranger --cmd=tab_close --datadir=/home/apollo'
let g:ranger_command_override = 'ranger --cmd "set show_hidden=true"'

" Incase fzf is needed at the top of the screen - here up is for direction and 50% means - it covers that much  of the screen during results
" allowed: window, tmux, up, down, left, right
" let g:fzf_layout = { '': '~50%' }


" add this line if you use NERDTree
" let g:NERDTreeHijackNetrw = 0
" open ranger when vim open a directory
let g:ranger_replace_netrw = 1

" Vim rooter settings
" let g:rooter_change_directory_for_non_project_files = 'current'
" let g:rooter_patterns = ['pom.xml', 'package.json', 'go.mod', 'README.md', '.git/']

let g:lf_map_keys = 0
" map - :Lf<CR>

" " Disable default mappings
" let g:nnn#set_default_mappings = 0
" nnoremap - :NnnPicker '%:p:h'<CR>
" let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }
" " let g:nnn#layout = 'vnew'
" " nnoremap   :NnnPicker<CR>

" Current window and split mode
" Files 
noremap <Leader>f :Files ~<cr>
nnoremap <C-Space><C-f> :<C-U>vsp \| :Files ~<CR>
" History
noremap <Leader>h :History<CR>
nnoremap <C-Space><C-h> :<C-U>vsp \| :History<CR>
" Buffers
noremap <Leader>b :Telescope buffers <cr>
nnoremap <C-Space><C-k> :<C-U>vsp \| :Telescope buffers<CR>
" Ranger
noremap <Leader>r :Ranger<cr>
nnoremap <C-Space><C-l> :<C-U>vsp \| :Ranger<CR>

" nnore <C-W>s :<C-U>vsp \| :Files ~<CR>
" nnore <C-W>v :<C-U>vsp \| :Ranger<CR>
" nnore <C-W>t :<C-U>vsp \| :Telescope find_files<CR>

" function! WinMove(key)
"     let t:curwin = winnr()
"     exec "wincmd ".a:key
"     if (t:curwin == winnr())
"         if (match(a:key,'[hl]'))
"             " Execute Ranger in default split - for h or l
"             exec "normal \<C-W>\v"
"         elseif (match(a:key,'[k]'))
"             " Execute Telescope find_files 
"             exec "normal \<C-W>\t"
"         else
"             " Execute Files for j
"             exec "normal \<C-W>\s"
"         endif
"         " exec "wincmd ".a:key
"     endif
" endfunction
" nnoremap <silent> <C-Space><C-h> :call WinMove('h')<CR>
" nnoremap <silent> <C-Space><C-j> :call WinMove('j')<CR>
" nnoremap <silent> <C-Space><C-k> :call WinMove('k')<CR>
" nnoremap <silent> <C-Space><C-l> :call WinMove('l')<CR>



" Open fzf in floating window
"let g:fzf_layout = { 'window': { 'width': 0.6, 'height': 0.7} }
" let g:fzf_preview_window = ''
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8} }
" let $BAT_THEME = 'Nord'
let g:fzf_preview_window = 'right:60%'

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
autocmd FileType python setlocal completeopt-=preview  " avoid sratchpad to display

" nvim coc settings
" let g:coc_enable_locationlist = 1
" Use `[c` and `]c` for navigate diagnostics
"nmap <silent> [c <Plug>(coc-diagnostic-prev)
"nmap <silent> ]c <Plug>(coc-diagnostic-next)
" nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

" Remap keys for gotos
"nmap <silent> <Leader>d <Plug>(coc-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"nmap rn <Plug>(coc-rename)
"autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

" format file with prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
noremap <Leader>0 :CocCommand rest-client.request <cr>

" Highlight and strip whitespace
let g:better_whitespace_enabled=0
" Below value was made 0 for removing annoying whitespace prompt at the exit.
let g:strip_whitespace_on_save=0
let g:strip_trailing_lines = 1

let g:strip_whitelines_at_eof=1
nnoremap <Leader><C-w> :StripWhitespace <cr>
" let g:strip_only_modified_lines=1

noremap <Leader>t :tab new<cr>
" Opens a new terminal inside neovim!
" noremap <Leader>t :tab Tnew <cr>
" noremap <Leader>i :1Ttoggle <cr>

" noremap <Leader>o :vert botright 2Ttoggle <cr>
noremap <Leader>o :vert rightbelow 2Ttoggle <cr>
let g:neoterm_shell='zsh'
" let g:neoterm_automap_keys='<Leader>n'
" This wasn't working and hence disabled by Rushyang
" let g:neoterm_automap_keys='rr'
let g:neoterm_default_mod='botright'
" let g:neoterm_size=12
let g:neoterm_fixedsize='1'
let g:neoterm_autoscroll='1'
" let g:neoterm_autoinsert=1
let g:neoterm_autojump=1

" fugitive gbrowse to open stash urls
" let g:fugitive_stash_domains = ['https://github.source.internal.cba']
" fugitive gbrowse to open github urls
let g:github_enterprise_urls = ['https://github.source.internal.cba']

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
" if (has("nvim"))
"   "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  " let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
let g:nord_italic=1
let g:nord_italic_comments=1
syntax enable
" set background=dark
" colorscheme elflord
" colorscheme evening
" colorscheme nightfly
" colorscheme moonfly
" colorscheme dracula
colorscheme one
" colorscheme nordfox
" vim.opt.termguicolors = true
" vim.cmd('colorscheme bluloco')
" colorscheme bluloco-dark
" end of new colorscheme block
" Below 2 lines overrides the above colorscheme with black background
" Normal background (Text) set to DARK aka NONE
highlight Normal ctermbg=NONE guibg=NONE
" Nontext background set to DARK aka NONE - below is painful though
highlight NonText guibg=NONE ctermbg=NONE

" 29th May, 2023
" https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f
" highlight Visual cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#5fd700 guifg=#000000
" highlight StatusLine cterm=NONE ctermbg=231 ctermfg=160 gui=NONE guibg=#ffffff guifg=#d70000
" highlight Normal cterm=NONE ctermbg=17 gui=NONE guibg=#000000
" highlight NonText cterm=NONE ctermbg=17 gui=NONE guibg=#00005f

" Some neodark specific changes:
" Vertical split between two buffers
let g:neodark#solid_vertsplit = 1 " default: 0

" Settings for vim-lightline
" \   'left': [[], ['mode', 'paste', 'lineinfo', 'relativepath', 'readonly', 'gitbranch', 'modified']],
" \   'right': [[], ['clock', 'percent' ], ['fileformat', 'fileencoding', 'filetype']],
if !has('gui_running')
  set t_Co=256
endif

" MyFugitiveHead function for calling gitbranch as component_function in lightline declaration
function MyFugitiveHead()
  let head = FugitiveHead()
  if head != ""
    let head = "\uf126 " .. head
  endif
  return head
endfunction
" This requires a fix yet
" function FugitiveTdfag()
"   let head = FugitiveHead()
"   if head != ""
"     let head = "\uf126 " .. Git describe --tags
"   endif
"   return head
" endfunction

" Below is for line at the bottom in nvim
let g:lightline = {
            \ 'colorscheme': 'one',
            \ 'active': {
            \   'left': [['mode'], ['paste'], ['lineinfo'], ['gitbranch',  'gittag', 'readonly', 'modified']],
            \   'right': [['statuslinetabs'], ['absolutepath'], ['percent']],
            \ },
            \ 'inactive': {
            \   'left': [['absolutepath', 'gittag']],
            \   'right': [['gitbranch', 'modified', 'line']],
            \ },
            \ 'component_expand': {
            \   'statuslinetabs': 'LightlineStatuslineTabs',
            \ },
            \ 'component_function': {
            \   'gitbranch': 'MyFugitiveHead',
            \ },
            \  'component': {
            \    'clock': '%{strftime("%a %d %b %I:%M%p")}',
            \    'gittag': '%{substitute(system("git tag --points-at HEAD 2>/dev/null | xargs"), "\n", "|", "g")}',
            \  },
            \ }
"            \   'gitbranch': 'fugitive#head'
"            \    'gittag': '%{:G describe --tags}'
            "\   'gitbranch': 'gitbranch#name'
            "\   'gittag': ':Git describe --tags --abbrev=0'
function! LightlineStatuslineTabs() abort
  return join(map(range(1, tabpagenr('$')),
        \ '(v:val == tabpagenr() ? "*" : "") . (v:val)'), " ")
endfunction
" Above is getting commented
" \ '(v:val == tabpagenr() ? "*" : "") . lightline#tab#filename(v:val)'), " ")

" Disable number/relativenumber for neovim terminal
au TermOpen * setlocal nonumber norelativenumber


" miscellaneous items goes here
" Highlight color should be something:
hi Visual guifg=#000000 guibg=#FFFFFF gui=none
" Toggle with number with relativenumber for copying
" nnoremap <C-Space><C-\> :set number! relativenumber!<CR>
nnoremap <C-Space><C-\> :setlocal nonumber!<CR>
nnoremap <C-Space>ww :set wrap!<CR>
nnoremap <C-Space><C-w> :w<CR>
nnoremap <Space>d :windo diffthis<CR>
nnoremap <C-Space><C-d> :windo diffoff<CR>

" Some key mappings to copy whats selected - yank and paste
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
" nnoremap  <leader>y  "+y
" nnoremap  <leader>yy  "+yy
" Paste from clipboard
" vnoremap <leader>p "gP
nnoremap <leader>p "P
nnoremap <leader>P "+P
" vnoremap <leader>p "+p
" vnoremap <leader>P "+P
" Changing cursor?
"  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
"                    \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
"                    \,sm:block-blinkwait175-blinkoff150-blinkon175
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Highlight the current line?
" hi Cursor  guifg=NONE    guibg=#656565 gui=none
" What is the status line color:
" hi StatusLineNC guifg=#857b6f guibg=#FFFFFF gui=none
"
"
" VIM attempt to delete rather than cut
" nnoremap c "_d
" nnoremap d "_d
" nnoremap dd "_d

" set colorcolumn=10
"=== FUNCTION  ===========================
"         NAME: CheckColumn
" DESCRIPTION: Check the column vs textwidth and put
" an asterisk after the column indicator in the statusline.
"======================================
" function! CheckColumn()
"     let colnum = col('.')
"     let twnum = &textwidth
"
"     if colnum > twnum
"         return "*"
"     else
"         return ""
"     endif
" endfunction
" set statusline+=\ [%l/%L,%c%{CheckColumn()}]

" Alter the colors of the number line permanently - Only works at the bottom
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg='#585858' guibg=NONE
