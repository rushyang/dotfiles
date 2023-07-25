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
  -- Fugitive
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'mhinz/vim-signify'
  -- Ranger + dependency
  use "rbgrouleff/bclose.vim"
  use "francoiscabrol/ranger.vim"
  -- Indent Plugin
  use 'nvim-tree/nvim-tree.lua'
  -- Indent Plugin
  use "lukas-reineke/indent-blankline.nvim"
  -- nvim-treesitter doesn't work even after compeleting config. Check it later
  -- use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {
      "nvim-lualine/lualine.nvim",
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use "ryanoasis/vim-devicons"
  use "tomtom/tcomment_vim"
  ----- Themes ----
  use {'catppuccin/nvim', as = 'catppuccin'}
  use "itchyny/lightline.vim"
  use "folke/tokyonight.nvim"
  use "dracula/vim"
  use "navarasu/onedark.nvim"
  use "EdenEast/nightfox.nvim"
  use {'bluz71/vim-nightfly-colors', as = 'nightfly'}
  use {'bluz71/vim-moonfly-colors', as = 'moonfly'}
  -----------------
  use "rakr/vim-one"
  use "dm1try/golden_size"
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  use({
    'kyazdani42/nvim-web-devicons',
    config = function()
        require('nvim-web-devicons').setup()
    end,
  })
  -- Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'ntpeters/vim-better-whitespace'
  -- CoC
  -- Jedi Vim for Python development
  use { 'davidhalter/jedi-vim', ft = { 'py', 'python' } }
  -- Coc.nvim for Language Server Protocol support
  use { 'neoclide/coc.nvim', branch = 'release' }
  -- Coc extensions
  use { 'neoclide/coc-lists', run = 'yarn install --frozen-lockfile' }
  use { 'neoclide/coc-yaml', run = 'yarn install --frozen-lockfile' }
  use { 'neoclide/coc-python', run = 'yarn install --frozen-lockfile' }
  -- completion
  -- use 'hrsh7th/nvim-cmp'
  -- use 'hrsh7th/cmp-nvim-lsp'
  -- use 'L3MON4D3/LuaSnip'
  -- use 'saadparwaiz1/cmp_luasnip'
  -- use "rafamadriz/friendly-snippets"
  -- use "github/copilot.vim"
  -- use "williamboman/mason.nvim"
  -- use "neovim/nvim-lspconfig"
  -- use "williamboman/mason-lspconfig.nvim"
  -- -- glepnir/lspsaga.nvim
  -- use {
  --     'glepnir/lspsaga.nvim',
  --     config = function()
  --         require('lspsaga').init_lsp_saga()
  --     end,
  -- }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
