-- Keymaps
local g = vim.g

-- Remap space as the leader key
keymap("", "<Space>", "<Nop>", opts)
g.mapleader = " "
g.maplocalleader = " "

-- Normal Mode --
-- (N) Better Window Navigation
keymap("n", "<C-h>", "<C-w>h", eopts({desc = "Go to Left Buffer"}))
keymap("n", "<C-j>", "<C-w>j", eopts({desc = "Go to Below Buffer "}))
keymap("n", "<C-k>", "<C-w>k", eopts({desc = "Go to Upper Buffer"}))
keymap("n", "<C-l>", "<C-w>l", eopts({desc = "Go to Right Buffer"}))

-- (N) Search Settings
keymap("n", "ss", ":noh<CR>", eopts({desc = "Clear Search Highlight"}))

-- (N) Window Splits/Rotations/Maximize/Resize
keymap("n", "<Leader>s", [[<Cmd>horizontal split<CR>]], eopts({desc = "Horizontal Split of Same Buffer"}))
keymap("n", "<M-s>", ":horizontal split | :Files ~<CR>", eopts({desc = "Horizontal Split Buffer and Fuzzy Search"}))
keymap("n", "<Leader>v", [[<Cmd>vertical split<CR>]], eopts({desc = "Vertical Split of Same Buffer"}))
keymap("n", "<M-1>", "<C-w>H", eopts({desc = "Move Horizontal split to Vertical"}))
keymap("n", "<M-2>", "<C-w>K", eopts({desc = "Move Vertical split to Horizontal"}))
keymap("n", "<C-Space>r", "<C-w><C-r>", eopts({desc = "Interchange Buffers"}))
keymap("n", "<C-Space>_", ":wincmd |<CR>", eopts({desc = "Vertical Maximize"}))
keymap("n", "<C-Space>|", ":wincmd _<CR>", eopts({desc = "Horizontal Maximize"}))
keymap("n", '<C-Space>+', [[:wincmd _ | :wincmd |<CR>]], eopts({desc = "Maximize"}))
keymap("n", "<C-Right>", [[<Cmd>:vertical resize +3<CR>]], eopts({desc = "Vertical Resize +3"}))
keymap("n", "<C-Left>", [[<Cmd>:vertical resize -3<CR>]], eopts({desc = "Vertical Resize -3"}))
keymap("n", "<C-Up>", [[<Cmd>:horizontal resize +3<CR>]], eopts({desc = "Horizontal Resize +3"}))
keymap("n", "<C-Down>", [[<Cmd>:horizontal resize -3<CR>]], eopts({desc = "Horizontal Resize -3"}))

-- (N) Quick Fuzzy Search / Split Modes
keymap("n", "<Leader>f", [[<Cmd>Telescope find_files cwd=/home/apollo hidden=true<CR>]], eopts({desc = "Search [F]iles in $HOME"}))
keymap("n", "<C-Space><C-f>", [[<Cmd>vertical split | :Telescope find_files cwd=/home/apollo hidden=true<CR>]], eopts({desc = "Vertical Split and Search [F]iles in $HOME"}))
keymap('n', '<Leader>h', [[<Cmd>lua require('telescope.builtin').oldfiles()<CR>]], eopts({desc = "[H]istory - previously opened files"}))
keymap("n", "<C-Space><C-h>", [[<Cmd>vertical split | lua require('telescope.builtin').oldfiles()<CR>]], eopts({desc = "Vertical Split and [H]istory Search"}))
keymap("n", "<Leader>b", [[<Cmd>Telescope buffers<CR>]], eopts({desc = "Open [B]uffers"}))
keymap("n", "<C-Space><C-b>", [[<Cmd>vertical split | :Telescope buffers<CR>]], eopts({desc = "Vertical Split and Open [B]uffers"}))
keymap("n", "<Leader>r", ":Ranger<CR>", eopts({desc = "Open Ranger in current buffer"}))
keymap("n", "<C-Space><C-l>", ":vertical split | :Ranger<CR>", eopts({desc = "Vertical Split and Open Ranger"}))
-- keymap("n", "<Leader>g", ":GitFiles<CR>", eopts({desc = "Fuzzy search of files in current Git project"}))
-- keymap("n", "<C-Space><C-g>", ":<C-U>vsp | :GitFiles<CR>", eopts({desc = "Vertical Split and fuzzy search of files in current Git project"}))
keymap("n", "<Leader>t", '<Cmd>lua telescope_live_grep_in_git_project()<CR>', eopts({desc = "Live grep in Git Project"}))
keymap("n", "<Leader>k", '<Cmd>Telescope keymaps <CR>', eopts({desc = "Open Telescope [k]eymaps"}))

-- (N) New Tabs, Cycle through the tas and buffers
keymap("n", ")", ":tabnext<CR>", optns)
keymap("n", "(", ":tabprevious<CR>", optns)
keymap("n", "<C-t>", ":tabnew<CR>", optns)
keymap("n", "<M-t>", ":tabnew | Files ~<CR>", optns)
keymap("n", "<C-Space>1", "1gt", eopts({desc = "Go to Neovim Tab# 1"}))
keymap("n", "<C-Space>2", "2gt", eopts({desc = "Go to Neovim Tab# 2"}))
keymap("n", "<C-Space>3", "3gt", eopts({desc = "Go to Neovim Tab# 3"}))
keymap("n", "<C-Space>4", "4gt", eopts({desc = "Go to Neovim Tab# 4"}))
keymap("n", "<C-Space>5", "5gt", eopts({desc = "Go to Neovim Tab# 5"}))
keymap("n", "<C-Space>6", "6gt", eopts({desc = "Go to Neovim Tab# 6"}))
keymap("n", "<C-Space>7", "7gt", eopts({desc = "Go to Neovim Tab# 7"}))
keymap("n", "<C-Space>8", "8gt", eopts({desc = "Go to Neovim Tab# 8"}))
keymap("n", "<C-Space>9", "9gt", eopts({desc = "Go to Neovim Tab# 9"}))
keymap("n", "}", ":bnext<CR>", eopts({desc = "Next Buffer"}))
keymap("n", "{", ":bprevious<CR>", eopts({desc = "Previous Buffer"}))
keymap("n", "_", ":bdelete<CR>", eopts({desc = "Delete Buffer"}))

-- (N) Save and Exit
keymap("n", "<C-q>", ":q<CR>", eopts({desc = "[Q]uit current buffer"}))
keymap("n", "<Leader><C-q>", ":q<CR>", eopts({desc = "[Quit] current buffer"}))
keymap("n", "<C-w>", ":w<CR>", eopts({desc = "[W]rite current buffer"}))

-- (N) Diff mode / Fugitive / Diffview
keymap("n", "<Leader>d", [[<Cmd>windo diffthis<CR>]], optns)
keymap("n", "<C-Space><C-d>", [[<Cmd>windo diffoff<CR>]], optns)
keymap("n", "<C-Space>G", ":Gvdiffsplit! ", optns)
-- keymap("n", "<Leader>hd", ":Gvdiffsplit!<CR>", eopts({desc = "DiffSplit Visual of current file"}))
keymap("n", "<C-Space><M-0>", ":0Gllog <CR>", optns)
keymap("n", "<M-g>", ':lua focus_resize_0()<CR> :DiffviewOpen ', optns)
keymap("n", "<C-Space><M-g>", ':lua focus_resize_1()<CR> :DiffviewClose ', optns)
keymap("n", "H", "[c", eopts({desc = "Go to Previous hunk or Diffview Change"}))
keymap("n", "L", "]c", eopts({desc = "Go to Next hunk or Diffview change"}))

-- (N) Toggles
keymap("n", "<C-Space><C-\\>", [[<Cmd>setlocal nonumber! | IndentBlanklineToggle <CR>]], optns)
keymap("n", "<C-Space>ww", ":set wrap!<CR>", optns)
keymap("n", "<C-Space><C-s>", ":set scrollbind! scrollbind?<CR>", optns)
keymap('n', '<F2>', ':lua toggle_CoC()<CR>', { noremap = true })
keymap('n', '<F3>', ':FocusToggle<CR>', { noremap = true })
keymap("n", "<F5>", ":set spell!<CR>", eopts({desc = "Spell Check Toggle"}))

-- (N) Misc
keymap("n", "Q", "q", optns)
-- keymap("n", "<C-Space>s", ":source $MYVIMRC<CR>", optns)
keymap("n", "<Leader><C-w>", ":StripWhitespace<CR>", eopts({desc = "Strip Whitespaces"}))
keymap("n", "<C-Space>in", ":IndentBlanklineToggle<CR>", eopts({desc = "IndentBlankline Toggle"}))

-- Insert Mode
-- (I) Change insert mode key:
keymap("i", "jj", "<Esc>`^", opts)
keymap("i", "kk", "<Esc>`^", opts)

-- Visual Mode
keymap("v", "<F6>", "y<c-w>wp<c-w>pgv", eopts({desc = "Text Movement from one pane to another"}))
keymap("v", "<C-h>", "^", eopts({desc = "Move to start of line in visual mode"}))
keymap("v", "<C-l>", "$<Left>", eopts({desc = "Move to end of line in visual mode"}))
keymap("v", "y", "\"+y", eopts({desc = "Copy to System buffer"}))

-- Terminal Mode
-- keymap("t", "<Esc>", "<C-\\><C-n>:let g:isInsert=0<CR>", optns)

-- Any Unassignments
keymap("", "q", "<Nop>", opts)                                                                       -- Need to unassign the current macro mapping coming from core
