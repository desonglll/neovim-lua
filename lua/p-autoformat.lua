vim.g["formatterpath"] = "~/.config/nivm/sources/autoformat"

-- Autocmd Autoformat while write buffers.
vim.cmd("autocmd BufWritePost * Autoformat")
