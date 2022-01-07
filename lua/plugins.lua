local vim = vim
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
  if vim.fn.input("Download Packer? (y for yes) ") ~= "y" then
    print('Please install Packer first!')
    return
  end

  local directory = string.format("%s/site/pack/packer/opt/", vim.fn.stdpath("data"))

  vim.fn.mkdir(directory, "p")

  print(" Downloading packer.nvim...")
  local out = vim.fn.system(
  string.format("git clone %s %s", "https://github.com/wbthomason/packer.nvim", directory .. "/packer.nvim")
  )
  print(out)

  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  -- -_-_-_-_- META -_-_-_-_-
  -- IMPATIENT: faster startup time {{{
    use {
      'lewis6991/impatient.nvim',
      rocks = 'mpack'
    }
    -- }}}

    use 'wbthomason/packer.nvim'

    use {
      'goolord/alpha-nvim',
      requires = { 'kyazdani42/nvim-web-devicons' },
    }

    use 'wakatime/vim-wakatime'

    use 'ryanoasis/vim-devicons'
    use 'folke/which-key.nvim'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use { 'junegunn/fzf', dir = '~/.fzf', run = ':call fzf#install()' }
    use 'coreyja/fzf.devicon.vim'

    use 'easymotion/vim-easymotion'
    use 'justinmk/vim-sneak'
    use 'jiangmiao/auto-pairs'
    use 'dbakker/vim-projectroot'
    use 'luochen1990/rainbow'
    use 'wellle/targets.vim'
    use 'rafamadriz/neon'
    use 'github/copilot.vim'
    use 'jreybert/vimagit'
    use { 'liuchengxu/vim-clap', run = ':Clap install-binary!' }
    use { 'inside/vim-textobj-jsxattr', requires = {{ 'kana/vim-textobj-user' }}}
    use 'editorconfig/editorconfig-vim'

    use 'Yggdroot/indentLine'

    use { 'lewis6991/gitsigns.nvim', requires = {{ 'nvim-lua/plenary.nvim' }}}

    use 'mattn/emmet-vim'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use 'neovim/nvim-lspconfig'
    use 'ojroques/nvim-lspfuzzy'
    use 'nvim-lualine/lualine.nvim'
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

    use 'tami5/lspsaga.nvim'

    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'nvim-telescope/telescope-project.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    use 'tamago324/nlsp-settings.nvim'
    use 'williamboman/nvim-lsp-installer'

    use 'arkav/lualine-lsp-progress'

    use 'dstein64/vim-startuptime'

    use {
      'pwntester/octo.nvim',
      requires = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
        'kyazdani42/nvim-web-devicons',
      },
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
      require('packer').sync()
    end
  end)
