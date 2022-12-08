
local keymap = vim.keymap


keymap.set('n', '<leader>/c1', '<Plug>(easymotion-overwin-f)')
keymap.set('n', '<leader>/c2', '<Plug>(easymotion-overwin-f2)')
keymap.set('n', '<leader>/l', '<Plug>(easymotion-overwin-line)')

-- jump to word
keymap.set('n', '<leader>/w', '<Plug>(easymotion-overwin-w)')

-- n-character search motion
keymap.set('n', '<leader>//', '<Plug>(easymotion-sn)')

keymap.set('n', 'nh', ':nohl<Return>')
