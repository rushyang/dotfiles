-- Keymaps
local g = vim.g
local opts = { noremap = true, silent = true }                                  -- opts: options silent
local optns = { noremap = true }                                                -- optns: options non-silent
local keymap = vim.api.nvim_set_keymap                                          -- Shortern function's name

-- Remap space as the leader key
keymap("", "<Space>", "<Nop>", opts)
g.mapleader = " "
g.maplocalleader = " "

-- Normal Mode --
-- (N) Text / Better Window Navigation
keymap("n", "<C-h>", "<C-w>h", _Eopts({desc = "Go to Left Buffer"}))
keymap("n", "<C-j>", "<C-w>j", _Eopts({desc = "Go to Below Buffer "}))
keymap("n", "<C-k>", "<C-w>k", _Eopts({desc = "Go to Upper Buffer"}))
keymap("n", "<C-l>", "<C-w>l", _Eopts({desc = "Go to Right Buffer"}))
keymap("n", "dw", "daw", _Eopts({desc = "Delete a word around cursor"}))
keymap("n", "gh", "^", _Eopts({desc = "Move to start of line in normal mode"}))
keymap("n", "gl", "$<Left>", _Eopts({desc = "Move to end of line in normal mode"}))

-- (N) Search Settings
keymap("n", "ss", ":noh<CR>", _Eopts({desc = "Clear Search Highlight"}))

-- (N) Window Splits/Rotations/Maximize/Resize
keymap("n", "<Leader>s", [[<Cmd>horizontal split<CR>]], _Eopts({desc = "Horizontal Split of Same Buffer"}))
keymap("n", "<Leader>v", [[<Cmd>vertical split<CR>]], _Eopts({desc = "Vertical Split of Same Buffer"}))
keymap("n", "<M-1>", "<C-w>H", _Eopts({desc = "Move Horizontal split to Vertical"}))
keymap("n", "<M-2>", "<C-w>K", _Eopts({desc = "Move Vertical split to Horizontal"}))
keymap("n", "<C-Space>r", "<C-w><C-r>", _Eopts({desc = "Interchange Buffers"}))
keymap("n", "<C-Space>_", ":wincmd |<CR>", _Eopts({desc = "Horizontal Maximize"}))
keymap("n", "<C-Space>|", ":wincmd _<CR>", _Eopts({desc = "Vertical Maximize"}))
keymap("n", '<C-Space>+', [[:wincmd _ | :wincmd |<CR>]], _Eopts({desc = "Full Maximize"}))
keymap("n", "<C-Right>", [[<Cmd>:vertical resize +3<CR>]], _Eopts({desc = "Vertical Resize +3"}))
keymap("n", "<C-Left>", [[<Cmd>:vertical resize -3<CR>]], _Eopts({desc = "Vertical Resize -3"}))
keymap("n", "<C-Up>", [[<Cmd>:horizontal resize +3<CR>]], _Eopts({desc = "Horizontal Resize +3"}))
keymap("n", "<C-Down>", [[<Cmd>:horizontal resize -3<CR>]], _Eopts({desc = "Horizontal Resize -3"}))

-- (N) Quick Fuzzy Search / Split Modes
keymap("n", "<Leader>f", "<Cmd>lua require('telescope.builtin').find_files({ cwd = '" .. _OSHOME .. "', hidden = true })<CR>", _Eopts({desc = "Search [F]iles in $HOME"}))
keymap("n", "<C-Space><C-f>", "<Cmd>vertical split | lua require('telescope.builtin').find_files({ cwd = '" .. _OSHOME .. "', hidden = true })<CR>", _Eopts({desc = "Vertical Split and Search [F]iles in $HOME"}))
keymap('n', '<Leader>h', [[<Cmd>lua require('telescope.builtin').oldfiles()<CR>]], _Eopts({desc = "[H]istory - previously opened files"}))
keymap("n", "<C-Space><C-h>", [[<Cmd>vertical split | lua require('telescope.builtin').oldfiles()<CR>]], _Eopts({desc = "Vertical Split and [H]istory Search"}))
keymap("n", "<Leader>b", [[<Cmd>Telescope buffers<CR>]], _Eopts({desc = "Open [B]uffers"}))
keymap("n", "<C-Space><C-b>", [[<Cmd>vertical split | :Telescope buffers<CR>]], _Eopts({desc = "Vertical Split and Open [B]uffers"}))
keymap("n", "<Leader>r", ":Ranger<CR>", _Eopts({desc = "Open Ranger in current buffer"}))
keymap("n", "<C-Space><C-l>", ":vertical split | :Ranger<CR>", _Eopts({desc = "Vertical Split and Open Ranger"}))
keymap("n", "<Leader>g", [[<Cmd>Telescope git_files<CR>]], _Eopts({desc = "Telescope git_files"}))
keymap("n", "<C-Space><C-g>", [[<Cmd>vertical split | :Telescope git_files<CR>]], _Eopts({desc = "Vertical Split + Telescope git_files"}))
keymap("n", "<Leader>t", '<Cmd>lua telescope_live_grep_in_git_project()<CR>', _Eopts({desc = "Live grep in Git Project"}))
keymap("n", "<Leader>k", '<Cmd>Telescope keymaps <CR>', _Eopts({desc = "Open Telescope [k]eymaps"}))
keymap("n", "<Leader>fp", '<Cmd>Telescope projects<CR>', _Eopts({desc = "Telescope [F]ind [p]rojects"}))
keymap("n", "<Leader>gs", '<Cmd>Telescope grep_string<CR>', _Eopts({desc = "Telescope [G]rep [S]tring"}))

-- (N) New Tabs, Cycle through the tas and buffers
keymap("n", ")", ":tabnext<CR>", optns)
keymap("n", "(", ":tabprevious<CR>", optns)
keymap("n", "<C-t>", ":tabnew<CR>", optns)
keymap("n", "<M-t>", ":tabnew | Ranger <CR>", optns)
keymap("n", "<M-h>", ":tabnew | lua require('telescope.builtin').oldfiles()<CR>", optns)
keymap("n", "<C-Space>1", "1gt", _Eopts({desc = "Go to Neovim Tab# 1"}))
keymap("n", "<C-Space>2", "2gt", _Eopts({desc = "Go to Neovim Tab# 2"}))
keymap("n", "<C-Space>3", "3gt", _Eopts({desc = "Go to Neovim Tab# 3"}))
keymap("n", "<C-Space>4", "4gt", _Eopts({desc = "Go to Neovim Tab# 4"}))
keymap("n", "<C-Space>5", "5gt", _Eopts({desc = "Go to Neovim Tab# 5"}))
keymap("n", "}", ":bnext<CR>", _Eopts({desc = "Next Buffer"}))
keymap("n", "{", ":bprevious<CR>", _Eopts({desc = "Previous Buffer"}))
keymap("n", "_", ":bdelete<CR>", _Eopts({desc = "Delete Buffer"}))

-- (N) Save and Exit
keymap("n", "<C-q>", ":q<CR>", _Eopts({desc = "[Q]uit current buffer"}))
keymap("n", "<C-w>", ":w<CR>", _Eopts({desc = "[W]rite current buffer"}))
keymap("n", "<M-Q>", ":wq<CR>", _Eopts({desc = "Save and Exit"}))

-- (N) Diff mode / Fugitive / Diffview
keymap("n", "<Leader>d", [[<Cmd>windo diffthis<CR>]], _Eopts({desc = "Start [D]iff two buffers"}))
keymap("n", "<C-Space><C-d>", [[<Cmd>windo diffoff<CR>]], _Eopts({desc = "Stop [D]iff two buffers"}))
keymap("n", "<M-d>", [[<Cmd>windo diffthis<CR>]], _Eopts({desc = "Start [D]iff two buffers -- Alternative"}))                      -- <Leader>d conflicts with jedi during python development
keymap("n", "<C-Space>G", ":Gvdiffsplit! ", optns)
keymap("n", "<Leader><M-0>", ":DiffviewFileHistory % <CR>", _Eopts({desc = "Open commits (File History) of this file"}))
keymap("n", "<C-Space><M-0>", ":0Gllog <CR>", _Eopts({desc = "Fugitive log commits of current file"}))
keymap("n", "<M-g>", ':lua _FOCUS_RESIZE0()<CR> :DiffviewOpen ', optns)
keymap("n", "<C-Space><M-g>", ':lua _FOCUS_RESIZE1()<CR> :DiffviewClose ', optns)
keymap("n", "H", "[c", _Eopts({desc = "Go to Previous hunk or Diffview Change"}))
keymap("n", "L", "]c", _Eopts({desc = "Go to Next hunk or Diffview change"}))
keymap("n", "<Leader>cc",':lua _Create_conventional_commit()<CR>', _Eopts({desc = "Create a conventional commit"}))

-- (N) Toggles
keymap("n", "<C-Space><C-\\>", [[<Cmd>setlocal nonumber! | IBLToggle <CR>]], optns)
keymap("n", "<C-Space>ww", ":set wrap!<CR>", optns)
keymap("n", "<C-Space><C-s>", ":set scrollbind! scrollbind?<CR>", optns)
keymap('n', '<F2>', ':lua toggle_CoC()<CR>', _Eopts({desc = "CoC Toggle"}))
keymap('n', '<F3>', ':FocusToggle<CR>', _Eopts({desc = "Focus Toggle"}))
keymap("n", "<F4>", ":lua toggle_Lsp()<CR>", _Eopts({desc = "Lsp Toggle"}))
keymap("n", "<F5>", ":set spell!<CR>", _Eopts({desc = "Spell Check Toggle"}))
keymap("n", "<C-Space><F4>", ":lua toggle_Lsp()<CR>", _Eopts({desc = "Lsp Toggle"}))
keymap("n", "<F6>", ":lua toggle_Noice()<CR>", _Eopts({desc = "Noice Toggle"}))
keymap("n", "<C-Space>C", ":ColorizerToggle<CR>", _Eopts({desc = "ColorizerToggle"}))

-- (N) Misc
keymap("n", "Q", "q", optns)
keymap("n", "<M-R>", ":luafile ~/.config/nvim/init.lua<CR>", _Eopts({desc = "Load init.lua"}))
keymap("n", "<M-T>", ":luafile ~/.config/nvim/lua/themes_config/themes_overrides.lua<CR>", _Eopts({desc = "Load theme overrides"}))
keymap("n", "<C-Space>in", ":IBLToggle<CR>", _Eopts({desc = "IndentBlankline Toggle"}))
keymap("n", "<Leader>co", ":Copilot<CR>", _Eopts({desc = "Invoking Copilot"}))
-- keymap("n", "<Leader><C-g>", "<Plug>(GitlabToggleCodeSuggestions)", _Eopts({desc = "Toggle Gitlab Code Suggestions"}))
keymap("n", "<C-Space>M", ":MarkdownPreview<CR>", _Eopts({desc = "Markdown Preview"}))
keymap("n", "<C-Space>S", ":Startify<CR>", _Eopts({desc = "Open startify"}))

-- Insert Mode
-- (I) Change insert mode key:
keymap("i", "jj", "<Esc>`^", opts)
keymap("i", "kk", "<Esc>`^", opts)
keymap("i", "lll", "<Esc>`^", opts)
keymap("i", "hhh", "<Esc>`^", opts)
keymap('i', '<M-j>', 'copilot#Accept("<CR>")', { silent = true, expr = true, script = true})

-- Visual Mode
keymap("v", "<F6>", "y<c-w>wp<c-w>pgv", _Eopts({desc = "Text Movement from one pane to another"}))
keymap("v", "gh", "^", _Eopts({desc = "Move to start of line in visual mode"}))
keymap("v", "gl", "$<Left>", _Eopts({desc = "Move to end of line in visual mode"}))
keymap("v", "y", "\"+y", _Eopts({desc = "Copy to System buffer"}))
keymap('v', '<M-j>', ":m '>+1<CR>gv=gv", _Eopts({desc = "Move one line below"}))
keymap('v', '<M-k>', ":m '<-2<CR>gv=gv", _Eopts({desc = "Move one line up"}))
-- Terminal Mode
-- keymap("t", "<Esc>", "<C-\\><C-n>:let g:isInsert=0<CR>", optns)

-- Any Unassignments
keymap("", "q", "<Nop>", opts)                                                                       -- Need to unassign the current macro mapping coming from core
