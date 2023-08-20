-- Install Packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -----Telescope----
  use {
     'nvim-telescope/telescope.nvim',
     requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
     'nvim-telescope/telescope-fzf-native.nvim',
     after = 'telescope.nvim',
     run = 'make',
     config = function()
        require('telescope').load_extension('fzf')
      end,
  }
  use {
     'nvim-telescope/telescope-symbols.nvim',
     after = 'telescope.nvim',
  }
  -----Git Tools----
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'lewis6991/gitsigns.nvim'
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  ----- Icons -----
  use {'kyazdani42/nvim-web-devicons', as = 'kyazdani42-web-devicons', path = "~/.local/share/nvim/site/pack/packer/start/nvim-web-devicons2"}
  -- Ranger + dependency
  use "rbgrouleff/bclose.vim"
  use "francoiscabrol/ranger.vim"
  -- nvim-tree
  use {
   'nvim-tree/nvim-tree.lua',
   requires = { 'kyazdani42-web-devicons', opt = true },
  }
  -- Indent Plugin
  use "lukas-reineke/indent-blankline.nvim"
  -- nvim-treesitter doesn't work even after compeleting config. Check it later
  -- use {'nvim-treesitter/nvim-treesitter',
  --  run = ':TSUpdate',
  --  requires = {'kyazdani42-web-devicons', opt = true}
  -- }
  use {
      "nvim-lualine/lualine.nvim",
      requires = {'kyazdani42-web-devicons', opt = true}
  }
  use "tomtom/tcomment_vim"
  ----- Themes ----
  use {'catppuccin/nvim', as = 'catppuccin'}
  use "folke/tokyonight.nvim"
  use "navarasu/onedark.nvim"
  use "EdenEast/nightfox.nvim"
  use "rakr/vim-one"
  -----------------
  use "dm1try/golden_size"
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  ------icons------
  use({
    'kyazdani42/nvim-web-devicons',
    config = function()
        require('nvim-web-devicons').setup()
    end,
  })
  use 'DaikyXendo/nvim-material-icon'
  use 'ntpeters/vim-better-whitespace'
  -------CoC------
  -- Jedi Vim for Python development
  use {
    'davidhalter/jedi-vim',
     ft = { 'py', 'python' }
  }
  -- Coc.nvim for Language Server Protocol support
  use { 'neoclide/coc.nvim', branch = 'release' }
  -- Coc extensions
  use { 'neoclide/coc-lists', run = 'yarn install --frozen-lockfile' }
  use { 'neoclide/coc-yaml', run = 'yarn install --frozen-lockfile' }
  use { 'neoclide/coc-python', run = 'yarn install --frozen-lockfile' }
  -- completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets"
  use "github/copilot.vim"
  use { -- LSP Configuration & Plugins
   'neovim/nvim-lspconfig',
   requires = {
     -- Automatically install LSPs to stdpath for neovim
     'williamboman/mason.nvim',
     'williamboman/mason-lspconfig.nvim',

     -- Useful status updates for LSP
     'j-hui/fidget.nvim',

     -- Additional lua configuration, makes nvim stuff amazing
     'folke/neodev.nvim',
   },
  }

  use { -- Autocompletion
    'hrsh7th/nvim-cmp',
    requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  }

  use { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  }
  -- use "williamboman/mason-lspconfig.nvim"
  -- glepnir/lspsaga.nvim
  -- use {
  --    'glepnir/lspsaga.nvim',
  --    config = function()
  --        require('lspsaga').init_lsp_saga()
  --    end,
  -- }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
