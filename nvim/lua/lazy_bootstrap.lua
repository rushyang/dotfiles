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
  {'junegunn/fzf', event = 'VeryLazy' },
  {'junegunn/fzf.vim', event = 'VeryLazy'},

  ----- Git Tools----
  { 'tpope/vim-fugitive', event = 'VeryLazy' },
  { 'lewis6991/gitsigns.nvim' },
  { 'sindrets/diffview.nvim', dependencies = { 'nvim-lua/plenary.nvim' }, },
  { 'olacin/telescope-cc.nvim', event = 'VeryLazy' },
  { 'pabloariasal/webify.nvim', event = 'VeryLazy' }, -- OpenFileInRepo/OpenLineInRepo/YankLineUrl+/YankFileUrl+
  { 'ahmedkhalf/project.nvim' },      -- Telescope plugin to fuzzy find all git projects - recently opened
  { 'aaronhallaert/advanced-git-search.nvim' }, -- Advanced GitSearch extension for Telscope and fzf-lua

  ----- Detect tabstop and shiftwidth automatically
  { 'tpope/vim-sleuth', event = 'VeryLazy' },

  ----- File Managers
  -- (Ranger + Dependency)
  { 'rbgrouleff/bclose.vim', event = 'VeryLazy' },
  { 'francoiscabrol/ranger.vim', event = 'VeryLazy' },
  -- Oil
  {
  'stevearc/oil.nvim',
  event = 'VeryLazy',
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
  {
    'lukas-reineke/indent-blankline.nvim', main = "ibl", opts = {},
    dependencies = {
      'HiPhish/rainbow-delimiters.nvim',
    },
  },

  ----- Lualine -----
  'nvim-lualine/lualine.nvim',

  ----- Colorschemes ----
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  { 'EdenEast/nightfox.nvim', priority = 1000 },
  { 'folke/tokyonight.nvim', name = 'tokyonight', priority = 1000 },
  { 'rafamadriz/neon', priority = 1000 },
  { 'sainnhe/edge', priority = 1000 },
  { "tiagovla/tokyodark.nvim", priority = 1000 },
  { "rebelot/kanagawa.nvim", priority = 1000 },
  { "ellisonleao/gruvbox.nvim", priority = 1000 },
  { "sainnhe/gruvbox-material", priority = 1000 },
  -- { "sainnhe/everforest", priority = 1000 },
  { "sainnhe/sonokai", priority = 1000 },
  { 'Th3Whit3Wolf/onebuddy', priority = 1000,  dependencies = { 'tjdevries/colorbuddy.vim', }, },
  { "Th3Whit3Wolf/one-nvim", priority = 1000},
  { "navarasu/onedark.nvim", priority = 1000},
  { "oxfist/night-owl.nvim", priority = 1000},
  { "theniceboy/nvim-deus", priority = 1000},
  -- { "vague2k/vague.nvim", priority = 1000},
  ----- Comments -----
  'tomtom/tcomment_vim',

  ----- focus (golden_size alternative)
  { 'nvim-focus/focus.nvim', version = '*' },

  ----- WhiteSpace -----
  { "cappyzawa/trim.nvim", event = 'VeryLazy' },

  -- Coc.nvim for Language Server Protocol support
  { 'neoclide/coc.nvim',  branch = 'release' },

  -- Coc extensions
  { 'neoclide/coc-lists', run = 'yarn install --frozen-lockfile' },
  { 'neoclide/coc-yaml', run = 'yarn install --frozen-lockfile' },
  { 'neoclide/coc-python', run = 'yarn install --frozen-lockfile' },

  -- LSP Configuration & Plugins
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      {
        'williamboman/mason.nvim',
        opts = {
          ensure_installed = {
            "gopls",
          },
        },
        config = true
      },
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', branch = "legacy", event = "LspAttach", opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },
  -- inlay hint - Need nvim 0.10
  -- {
  --   'felpafel/inlay-hint.nvim',
  --   event = 'LspAttach',
  --   config = true,
  -- },
  -- inlay diagnostics
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy", -- Or `LspAttach`
    config = function()
        require('tiny-inline-diagnostic').setup()
    end
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
  { 'windwp/nvim-autopairs', event = 'VeryLazy' },
  {  "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
  },

  -- NvimTab names (Tabby)
  { 'nanozuki/tabby.nvim', event = 'VeryLazy' },

  -- Startify
  'mhinz/vim-startify',
  -- {
  --   'nvimdev/dashboard-nvim',
  --   event = 'VimEnter',
  --   config = function()
  --     require('dashboard').setup {
  --       -- config
  --     }
  --   end,
  --   dependencies = { {'nvim-tree/nvim-web-devicons'}}
  -- },

  --  Markdown-preview
  -- install without yarn or npm
  {
    "iamcco/markdown-preview.nvim",
    event = 'VeryLazy',
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- Notes
  {
    'renerocksai/telekasten.nvim', event = 'VeryLazy',
    dependencies = {
      "renerocksai/calendar-vim",
    }
  },

  -- AI
  ----- Github Copilot ----
  -- { 'github/copilot.vim', event = 'VeryLazy' },

  -- Gitlab plugin
  -- {
  -- url = "https://gitlab.com/gitlab-org/editor-extensions/gitlab.vim.git",
  -- lazy = false,
  -- },
  -- Miscellanous
  -- Sorting
  { 'sQVe/sort.nvim', event = "VeryLazy" },
  -- Colorizer
  { 'norcalli/nvim-colorizer.lua', event = 'VeryLazy' },
  -- Twilight - for dimming
  -- { 'folke/twilight.nvim', event = "VeryLazy" },
}, {})
