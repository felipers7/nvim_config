vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('n', '<space>w', ':w!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<space>q', ':q!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':NvimTreeFocus<CR>', {})
vim.api.nvim_set_keymap('n', '<C-z>', '<nop>', {})
vim.wo.number = true
vim.wo.relativenumber = true
vim.api.nvim_command('set shellslash')

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2


--vim.api.nvim_command('autocmd TextChanged *.tsx lua require"core.plugin_custom.qwik_scope".import()')
vim.api.nvim_command('autocmd InsertLeave *.tsx lua require"core.plugin_custom.qwik_scope".import()')
--vim.keymap.set('n','<space>z','[[<cmd> lua require"core.plugin_custom.qwik_scope".import()<CR>',{})
--vim.keymap.set('i','jj',[[<cmd> lua require"core.plugin_custom.qwik_scope".import()<CR>]],{})
