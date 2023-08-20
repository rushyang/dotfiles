-- Keymaps

local opts = { noremap = true, silent = true }                                  -- opts: options silent
local optns = { noremap = true }                                                -- optns: options non-silent
local keymap = vim.api.nvim_set_keymap                                          -- Shortern function's name
local g = vim.g

-- Remap space as the leader key
keymap("", "<Space>", "<Nop>", opts)
g.mapleader = " "
g.maplocalleader = " "

-- Normal Mode --
-- (N) Better Window Navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- (N) Search Settings
keymap("n", "ss", ":noh<CR>", optns)                                          -- clear search highlight

-- (N) Window Splits/Rotations/Maximize/Resize
keymap("n", "<Leader>s", [[<Cmd>horizontal split<CR>]], opts)                 -- Horizontal Split of Same Buffer
keymap("n", "<M-s>", ":horizontal split | :Files ~<CR>", opts)                -- Horizontal Split buffer + Fuzzy Search
keymap("n", "<Leader>v", [[<Cmd>vertical split<CR>]], opts)                   -- Vertical Split of Same Buffer
keymap("n", "<M-1>", "<C-w>K", opts)                                          -- Move Vertical split to Horizontal
keymap("n", "<M-2>", "<C-w>H", opts)                                          -- Move Horizontal split to Vertical
keymap("n", "<C-Space>r", "<C-w><C-r>", opts)                                 -- Interchange buffers - Horizontal takes precedence
keymap("n", "<C-Space>_", ":wincmd |<CR>", opts)                              -- Vertical Maximize
keymap("n", "<C-Space>|", ":wincmd _<CR>", opts)                              -- Horizontal Maximize
keymap("n", '<C-Space>+', [[:wincmd _ | :wincmd |<CR>]], opts)                -- Horizontal Maximize
keymap("n", "<C-Right>", [[<Cmd>:vertical resize +3<CR>]], opts)
keymap("n", "<C-Left>", [[<Cmd>:vertical resize -3<CR>]], opts)
keymap("n", "<C-Up>", [[<Cmd>:horizontal resize +3<CR>]], opts)
keymap("n", "<C-Down>", [[<Cmd>:horizontal resize -3<CR>]], opts)

-- (N) Quick Fuzzy Search / Split Modes
keymap("n", "<Leader>f", [[<Cmd>Files ~<CR>]], opts)
keymap("n", "<C-Space><C-f>", [[<C-U>vsp | <Cmd>Files ~<CR>]], opts)
keymap("n", "<C-Space><C-f>", ":<C-U>vsp | :Files ~<CR>", opts)
keymap("n", "<Leader>h", ":History<CR>", opts)
keymap("n", "<C-Space><C-h>", ":<C-U>vsp | :History<CR>", opts)
keymap("n", "<Leader>b", ":Buffers<CR>", opts)
keymap("n", "<C-Space><C-b>", ":<C-U>vsp | :Telescope buffers<CR>", opts)
keymap("n", "<Leader>r", ":Ranger<CR>", opts)
keymap("n", "<C-Space><C-l>", ":<C-U>vsp | :Ranger<CR>", opts)
keymap("n", "<Leader>g", ":Telescope git_files<CR>", opts)
keymap("n", "<C-Space><C-g>", ":<C-U>vsp | :Telescope git_files<CR>", opts)
keymap("n", "<Leader>t", '<Cmd>lua telescope_live_grep_in_git_project()<CR>', optns)

-- (N) New Tabs, Cycle through the tas and buffers
keymap("n", ")", ":tabnext<CR>", optns)
keymap("n", "(", ":tabprevious<CR>", optns)
keymap("n", "<C-t>", ":tabnew<CR>", optns)
keymap("n", "<M-t>", ":tabnew | Files ~<CR>", optns)
keymap("n", "<C-Space>1", "1gt", opts)
keymap("n", "<C-Space>2", "2gt", opts)
keymap("n", "<C-Space>3", "3gt", opts)
keymap("n", "<C-Space>4", "4gt", opts)
keymap("n", "<C-Space>5", "5gt", opts)
keymap("n", "<C-Space>6", "6gt", opts)
keymap("n", "<C-Space>7", "7gt", opts)
keymap("n", "<C-Space>8", "8gt", opts)
keymap("n", "<C-Space>9", "9gt", opts)
keymap("n", "}", ":bnext<CR>", optns)
keymap("n", "{", ":bprevious<CR>", optns)
keymap("n", "_", ":bdelete<CR>", optns)

-- (N) Save and Exit
keymap("n", "<Leader>k", "<C-w><C-q>", opts)
keymap("n", "<C-q>", ":q<CR>", opts)
keymap("n", "<Leader><C-q>", ":q<CR>", opts)
keymap("n", "<C-w>", ":w<CR>", opts)

-- (N) Diff mode / Fugitive / Diffview
keymap("n", "<Leader>d", [[<Cmd>windo diffthis<CR>]], optns)
keymap("n", "<C-Space><C-d>", [[<Cmd>windo diffoff<CR>]], optns)
keymap("n", "<C-Space>G", ":Gvdiffsplit! ", optns)                                                    -- Fugitive vertical diff call - non-silent and without <Cmd> + <CR> for params
keymap("n", "<C-Space><M-0>", ":0Gllog <CR>", optns)                                                  -- Fugitive - see commit history of just current file
keymap("n", "<M-g>", ':lua GoldenSizeToggle()<CR> :DiffviewOpen <CR>', optns)                         -- First disable Golden_Size and then DiffviewOpen
keymap("n", "<C-Space><M-g>", ':lua GoldenSizeToggle()<CR> :DiffviewClose ', optns)                   -- Enable Golden_Size and then DiffviewClose but wait for prompt
keymap("n", "H", "[c", opts)
keymap("n", "L", "]c", opts)

-- (N) Toggles
keymap("n", "<C-Space><C-\\>", [[<Cmd>setlocal nonumber! | IndentBlanklineToggle <CR>]], optns)
keymap("n", "<C-Space>ww", ":set wrap!<CR>", optns)
keymap("n", "<C-Space><C-s>", ":set scrollbind! scrollbind?<CR>", optns)
keymap('n', '<F2>', ':lua toggle_CoC()<CR>', { noremap = true })
keymap('n', '<F3>', ':lua GoldenSizeToggle()<CR>', { noremap = true })
keymap("n", "<F5>", ":set spell!<CR>", optns)

-- (N) Misc
keymap("n", "Q", "q", optns)                                                                         -- Change Macro record to "Q"- nonsilent
keymap("n", "<C-Space>s", ":source $MYVIMRC<CR>", optns)                                             -- Source init file
keymap("n", "<Leader><C-w>", ":StripWhitespace<CR>", optns)                                          -- StripWhitespace
keymap("n", "<C-Space>in", ":IndentBlanklineToggle<CR>", optns)                                      -- Toggle IndentBlankline

-- Insert Mode
-- (I) Change insert mode key:
keymap("i", "jj", "<Esc>`^", opts)
keymap("i", "kk", "<Esc>`^", opts)

-- Visual Mode
keymap("v", "<F6>", "y<c-w>wp<c-w>pgv", opts)                                                        -- Text movement from one pane to another
keymap("v", "<C-h>", "^", opts)                                                                      -- Start of the line
keymap("v", "<C-l>", "$<Left>", opts)                                                                -- End of the line
keymap("v", "y", "\"+y", opts)

-- Terminal Mode
-- keymap("t", "<Esc>", "<C-\\><C-n>:let g:isInsert=0<CR>", optns)

-- Any Unassignments
keymap("", "q", "<Nop>", opts)                                                                       -- Need to unassign the current macro mapping coming from core
