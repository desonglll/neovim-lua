-- require("nvim-treesitter.install").prefer_git = true
require'nvim-treesitter.configs'.setup {
  parser_install_dir = "$HOME/.config/nvim/sources/treesitter",
  -- ensure_installed = { all },
  -- auto_install = true,
  highlight = {
    enable = true,
    disable = {"lua"},
  },
}
vim.opt.runtimepath:append("$HOME/.config/nvim/sources/treesitter")
