vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  use 'git@github.com:wbthomason/packer.nvim'

  -- Vim Spector
  -- Debugger
  -- use 'git@github.com:puremourning/vimspector'

  -- Autopairs
  use 'git@github.com:windwp/nvim-autopairs.git'

  -- Nerdtree. https://github.com/preservim/nerdtree
  use 'git@github.com:preservim/nerdtree.git'
  use 'git@github.com:ryanoasis/vim-devicons.git'

  -- TreeSitter
  use {
    'git@github.com:nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
  }
  -- nvim-surround. https://github.com/kylechui/nvim-surround
  use {
    'git@github.com:kylechui/nvim-surround',
    -- tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
    require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
    })
    end
  }
  -- Git Gutter. https://github.com/airblade/vim-gitgutter
  use 'git@github.com:airblade/vim-gitgutter.git'

  -- Markdown support
  use 'git@github.com:godlygeek/tabular.git'
  use 'git@github.com:preservim/vim-markdown.git'

  -- Tagbar
  use 'git@github.com:lvht/tagbar-markdown'

  -- Markdown preview. https://github.com/iamcco/markdown-preview.nvim
  use 'git@github.com:iamcco/markdown-preview.nvim.git'

  -- LSP config
  use 'git@github.com:williamboman/nvim-lsp-installer.git'
  use 'git@github.com:neovim/nvim-lspconfig'

  -- Themes
  -- Github主题
  use 'git@github.com:projekt0n/github-nvim-theme'
  -- Everforest
  use 'git@github.com:sainnhe/everforest.git'

  -- WhichKey
  use 'git@github.com:folke/which-key.nvim'

  -- easymotion
  use 'git@github.com:easymotion/vim-easymotion'

  -- Nvim cmp
  use 'git@github.com:hrsh7th/cmp-nvim-lsp'
  use 'git@github.com:hrsh7th/cmp-buffer'
  use 'git@github.com:hrsh7th/cmp-path'
  use 'git@github.com:hrsh7th/cmp-cmdline'
  use 'git@github.com:hrsh7th/nvim-cmp'

  -- vsnip
  use 'git@github.com:hrsh7th/cmp-vsnip'
  use 'git@github.com:hrsh7th/vim-vsnip'

  -- gcc to comment
  use 'git@github.com:numToStr/Comment.nvim' -- required on others.lua

  -- telescope
  use 'git@github.com:nvim-telescope/telescope.nvim'
  use 'git@github.com:kyazdani42/nvim-web-devicons' -- required on others.lua
  use 'git@github.com:nvim-lua/plenary.nvim'

  -- Dashboard
  use 'git@github.com:glepnir/dashboard-nvim'

  -- ToggleTerminal
  use 'git@github.com:akinsho/toggleterm.nvim'

  -- Airline
  use 'git@github.com:vim-airline/vim-airline'
  use 'git@github.com:vim-airline/vim-airline-themes'
end)

