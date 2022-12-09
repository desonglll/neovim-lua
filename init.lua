require ('base')
require ('keymaps')
require ('plugin-list')

-- Config Themes
require ('themes')

require ('p-whichkey')
require ('p-nvim-cmp')
require ('p-vsnip')
require ('p-telescope')
require ('p-easymotion')
require ('p-dashboard')
require ('p-toggleterm')
require ('p-airline')
require ('p-vim-markdown')

-- Autoformat
require ('p-autoformat')
-- Autopairs
require ('p-autopairs')
-- Nerdtree
require ('p-nerdtree')

-- TreeSitter
require ('p-treesitter')

-- Require lsp
-- require ('lsp-config') -- Because lsp-config was called in ./lua/lsp-installer.lua
require ('lsp-installer')

-- nvim-surround
require ('p-ysw')
-- Require vim spector
-- require ('p-vimspector')

require ('color')
require ('others')
