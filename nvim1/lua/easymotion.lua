
local keymap = vim.keymap


keymap.set('n', '<leader>bc1', '<Plug>(easymotion-overwin-f)')
keymap.set('n', '<leader>bc2', '<Plug>(easymotion-overwin-f2)')
keymap.set('n', '<leader>bl', '<Plug>(easymotion-overwin-line)')

-- jump to word
keymap.set('n', '<leader>bw', '<Plug>(easymotion-overwin-w)')

-- n-character search motion
keymap.set('n', '<leader>/', '<Plug>(easymotion-sn)')

keymap.set('n', 'nh', ':nohl<Return>')
