local nvim_lsp = require('lspconfig')

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)


local on_attach = function(client, bufnr)

  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<leader>d', '<cmd>Telescope lsp_document_symbols<cr>', bufopts)
end



require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
}
require('lspconfig')['pylsp'].setup{
    on_attach = on_attach,
}
require('lspconfig')['jdtls'].setup{
    on_attach = on_attach,
}

vim.keymap.set('n', "<leader>o","<Cmd>TypescriptOrganizeImports<CR>")
vim.keymap.set('n', "<leader>a","<Cmd>TypescriptAddMissingImports<CR>")
vim.keymap.set('n', "<leader>r","<Cmd>TypescriptRemoveUnused<CR>")


