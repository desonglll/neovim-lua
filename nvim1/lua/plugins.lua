vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  use 'git@github.com:wbthomason/packer.nvim'

  -- ui
  use 'git@github.com:sainnhe/everforest'
  use 'git@github.com:j-hui/fidget.nvim'
  use 'git@github.com:glepnir/galaxyline.nvim'
  use 'git@github.com:folke/todo-comments.nvim'
  use 'git@github.com:f-person/git-blame.nvim'

  -- lsp
  use 'git@github.com:neovim/nvim-lspconfig'

  -- format
  use 'git@github.com:nvim-lua/plenary.nvim'
  use 'git@github.com:jose-elias-alvarez/null-ls.nvim'
  use 'git@github.com:jose-elias-alvarez/typescript.nvim'

  -- cmp
  use 'git@github.com:onsails/lspkind-nvim'
  use 'git@github.com:hrsh7th/cmp-buffer'
  use 'git@github.com:hrsh7th/cmp-nvim-lsp'
  use 'git@github.com:hrsh7th/cmp-path'
  use 'git@github.com:hrsh7th/nvim-cmp'
  
  use 'git@github.com:airblade/vim-gitgutter'

  use 'git@github.com:easymotion/vim-easymotion'

  -- snip
  use { 'git@github.com:saadparwaiz1/cmp_luasnip' }
  use({ "git@github.com:L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
  use 'git@github.com:rafamadriz/friendly-snippets'

  -- treesitter
  use {
    'git@github.com:nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- telescope
  use 'git@github.com:nvim-telescope/telescope.nvim'
  use 'git@github.com:kyazdani42/nvim-web-devicons'

  -- file explore
  use 'git@github.com:kyazdani42/nvim-tree.lua'

  -- other
  use 'git@github.com:rmagatti/alternate-toggler'
  use 'git@github.com:windwp/nvim-autopairs'
  use 'git@github.com:windwp/nvim-ts-autotag'
  use 'git@github.com:numToStr/Comment.nvim'
  use 'git@github.com:mg979/vim-visual-multi'
  use 'git@github.com:gcmt/wildfire.vim'
  use "git@github.com:tpope/vim-surround"
  use 'git@github.com:tpope/vim-obsession'
  use 'git@github.com:dhruvasagar/vim-prosession'
  use "git@github.com:folke/which-key.nvim"
  use 'git@github.com:folke/zen-mode.nvim'
  use 'git@github.com:github/copilot.vim'


  use({
    "git@github.com:folke/noice.nvim",
    requires = {
      "git@github.com:MunifTanjim/nui.nvim",
      "git@github.com:rcarriga/nvim-notify",
    }
  })
end)

