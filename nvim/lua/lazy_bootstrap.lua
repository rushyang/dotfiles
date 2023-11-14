-- Install package:manager https://github.com/folke/lazy.nvim
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
  'olacin/telescope-cc.nvim',

  ----- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  ----- File Managers
  -- (Ranger + Dependency)
  'rbgrouleff/bclose.vim',
  'francoiscabrol/ranger.vim',
  -- Oil
  {
  'stevearc/oil.nvim',
  opts = {},
  },

  ----- Icons -----
  'kyazdani42/nvim-web-devicons',

  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },

  ----- Indent -----
  'lukas-reineke/indent-blankline.nvim',

  ----- Lualine -----
  'nvim-lualine/lualine.nvim',

  ----- Colorschemes ----
  { 'catppuccin/nvim', name = 'catppuccin' },
  'folke/tokyonight.nvim',
  'rafamadriz/neon',
  'sainnhe/edge',
  "tiagovla/tokyodark.nvim",
  "rebelot/kanagawa.nvim",
  { "ellisonleao/gruvbox.nvim", priority = 1000 },
  { "sainnhe/gruvbox-material", priority = 1000 },
  { "sainnhe/everforest", priority = 1000 },
  { "sainnhe/sonokai", priority = 1000 },

  ----- Comments -----
  'tomtom/tcomment_vim',

  ----- focus (golden_size alternative)
  { 'nvim-focus/focus.nvim', version = '*' },

  ----- WhiteSpace -----
  "cappyzawa/trim.nvim",

  ----- Github Copilot ----
  'github/copilot.vim',

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
      { 'j-hui/fidget.nvim', branch = "legacy", event = "LspAttach", opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },

  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      "hrsh7th/cmp-buffer",
      -- Snippet Engine & its associated nvim-cmp source
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',

      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',

      -- Adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',
    },
  },

  -- Noice & Notify
  {
    "folke/noice.nvim",
    -- event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
      }
  },

  -- Auto-pairs
  'windwp/nvim-autopairs',

  -- NvimTab names (Tabby)
  'nanozuki/tabby.nvim',

  -- Startify
  'mhinz/vim-startify',

  -- Gitlab plugin
  -- {
  -- url = "https://gitlab.com/gitlab-org/editor-extensions/gitlab.vim.git",
  -- lazy = false,
  -- },
}, {})
