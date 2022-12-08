vim.g.mapleader = ' '

local map = vim.keymap

map.set("i", "jk", "<ESC>")
map.set("n", "<leader>w", ":w<CR>")
map.set("n", "<leader>q", ":q<CR>")

map.set('n','<C-a>','gg<S-v>G')

map.set('n','ss',':vsplit<Return><C-w>w',{silent = true})

map.set('n','sf','<C-w>w')
map.set('n','sh','<C-w>h')
map.set('n','sj','<C-w>j')
map.set('n','sk','<C-w>k')
map.set('n','sl','<C-w>l')

map.set('n','s<left>','<C-w><')
map.set('n','s<right>','<C-w>>')
map.set('n','s<up>','<C-w>+')
map.set('n','s<down>','<C-w>-')

map.set('n','H','^')
map.set('n','L','$')
