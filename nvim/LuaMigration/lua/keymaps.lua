-- Keymaps

-- Modes
--    normal_mode = "n"
--    insert_mode = "i"
--    visual_mode = "v"
--    visual_block_mode = "x"
--    term_mode = "t"
--    command_mode = "c"

-- opts: options silent
local opts = { noremap = true, silent = true }
-- optns: options non-silent
local optns = { noremap = true }

-- Shortern functions name
local keymap = vim.api.nvim_set_keymap
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

-- Search Settings
keymap("n", "ss", ":noh<CR>", optns)                                          -- clear search highlight

-- (N) Window Splits/Rotations/Maximize
keymap("n", "<Leader>s", "<C-w>s", opts)                                      -- Horizonttal Split
keymap("n", "<Leader>v", "<C-w>v", opts)                                      -- Vertical Split
keymap("n", "<C-Space>r", "<C-w><C-r>", opts)                                 -- Horizonal takes precedence
keymap("n", "<C-Space>_", ":wincmd |<CR>", opts)                              -- Vertical Maximize
keymap("n", "<C-Space>|", ":wincmd _<CR>", opts)                              -- Horizonal Maximize
keymap("n", '<C-Space>+', [[:wincmd _ | :wincmd |<CR>]], opts)                -- Horizonal Maximize

-- (N) Quick Fuzzy Search / Split Modes
-- keymap("n", "<Leader>f", ':lua require("telescope.builtin").find_files({cwd = os.getenv("HOME"), hidden = true})<CR>', opts)
keymap("n", "<Leader>f", [[<Cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input("Search in home: "), use_regex = true, hidden = true, search_dirs = {vim.fn.expand('~')} })<CR>]], opts)
keymap("n", "<C-Space><C-f>", ':<C-U>vsp | :lua require("telescope.builtin").find_files({cwd = os.getenv("HOME"), hidden = true})<CR>', opts)
-- keymap("n", "<C-Space><C-f>", ":<C-U>vsp | :Files ~<CR>", opts)
keymap("n", "<Leader>h", ":History<CR>", opts)
keymap("n", "<C-Space><C-h>", ":<C-U>vsp | :History<CR>", opts)
keymap("n", "<Leader>b", ":Telescope buffers<CR>", opts)
keymap("n", "<C-Space><C-b>", ":<C-U>vsp | :Telescope buffers<CR>", opts)
keymap("n", "<Leader>r", ":Ranger<CR>", opts)
keymap("n", "<C-Space><C-l>", ":<C-U>vsp | :Ranger<CR>", opts)
keymap("n", "<Leader>g", ":Telescope git_files<CR>", opts)
keymap("n", "<C-Space><C-g>", ":<C-U>vsp | :Telescope git_files<CR>", opts)

-- (N) New Tabs, Cycle through the tas and buffers
keymap("n", ")", ":tabnext<CR>", optns)
keymap("n", "(", ":tabprevious<CR>", optns)
keymap("n", "<C-Space>t", ":tabnew<CR>", optns)
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

-- (N) Diff mode
keymap("n", "<Leader>d", [[<Cmd>windo diffthis<CR>]], opts)
keymap("n", "<C-Space><C-d>", [[<Cmd>windo diffoff<CR>]], opts)
keymap("n", "<C-Space>G", ":Gvdiffsplit! ", optns)                      -- non-silent and without <Cmd> for params
keymap("n", "H", "[c", opts)
keymap("n", "L", "]c", opts)

-- (N) Non-silent toggles
keymap("n", "<F5>", ":set spell!<CR>", optns)
keymap("n", "<C-Space><C-\\>", [[<Cmd>setlocal nonumber! | IndentBlanklineToggle <CR>]], optns)
keymap("n", "<C-Space>ww", ":set wrap!<CR>", optns)
keymap("n", "<C-Space><C-s>", ":set scrollbind! scrollbind?<CR>", optns)
keymap('n', '<F2>', ':lua toggle_CoC()<CR>', { noremap = true })

-- (N) Misc
keymap("n", "Q", "q", optns)                                                        -- Change Macro record to "Q"- nonsilent
keymap("n", "<C-Space>s", ":source $MYVIMRC<CR>", optns)                            -- Source init file
keymap("n", "<Leader><C-w>", ":StripWhitespace<CR>", optns)                         -- StripWhitespace
keymap("n", "<C-Space>in", ":IndentBlanklineToggle<CR>", optns)                     -- Toggle IndentBlankline

-- Insert Mode
-- (I) Change insert mode key:
keymap("i", "jj", "<Esc>`^", opts)
keymap("i", "kk", "<Esc>`^", opts)

-- Visual Mode
keymap("v", "<F6>", "y<c-w>wp<c-w>pgv", opts)             -- Text movement from one pane to another
keymap("v", "<C-h>", "^", opts)                           -- Start of the line
keymap("v", "<C-l>", "$<Left>", opts)                     -- End of the line
keymap("v", "<Leader>y", "\"+y", opts)

-- Terminal Mode
-- keymap("t", "<Esc>", "<C-\\><C-n>:let g:isInsert=0<CR>", optns)

-- Any Unassignments
keymap("", "q", "<Nop>", opts)                            -- Need to unassign the current one as its a core
