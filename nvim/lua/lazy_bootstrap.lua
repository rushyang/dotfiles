-- Install package manager
--    https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require('lazy').setup({
  ----- Telescope + Fuzzy Finders ----
  { 'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
    },
  },
  'junegunn/fzf',
  'junegunn/fzf.vim',

  ----- Git Tools----
  'tpope/vim-fugitive',
  'lewis6991/gitsigns.nvim',
  { 'sindrets/diffview.nvim', dependencies = { 'nvim-lua/plenary.nvim' }, },

  ----- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  ----- Ranger + dependency
  'rbgrouleff/bclose.vim',
  'francoiscabrol/ranger.vim',

  ----- Icons -----
  'kyazdani42/nvim-web-devicons',

  ----- nvim-tree
  'nvim-tree/nvim-tree.lua',
  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },

  ----- Indent
  'lukas-reineke/indent-blankline.nvim',

  ----- Lualine -----
  'nvim-lualine/lualine.nvim',

  ----- Themes ----
  { 'catppuccin/nvim', name = 'catppuccin' },
  'folke/tokyonight.nvim',

  ----- Comments ----
  'tomtom/tcomment_vim',

  ----- golden_size ----- Golden_size is creating problems with telescope's search bar layout
  -- 'dm1try/golden_size',

  ----- focus (golden_size alternative)
  { 'nvim-focus/focus.nvim', version = '*' },

  ----- WhiteSpace -----
  'ntpeters/vim-better-whitespace',

  ------ CoC -----
  {
    'davidhalter/jedi-vim',
     ft = { 'py', 'python' }
  },

  -- Coc.nvim for Language Server Protocol support
  { 'neoclide/coc.nvim', branch = 'release' },

  -- Coc extensions
  { 'neoclide/coc-lists', run = 'yarn install --frozen-lockfile' },
  { 'neoclide/coc-yaml', run = 'yarn install --frozen-lockfile' },
  { 'neoclide/coc-python', run = 'yarn install --frozen-lockfile' },


  -- LSP Configuration & Plugins
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },

  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',

      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',

      -- Adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',
    },
  },
  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },
}, {})
