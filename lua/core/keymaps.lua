vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('n', '<space>w', ':w!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<space>q', ':q!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':NvimTreeFocus<CR>', {})
vim.wo.number = true
vim.wo.relativenumber = true