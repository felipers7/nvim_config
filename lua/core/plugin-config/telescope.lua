require('telescope').setup({ file_ignore_patterns = { "node%_modules/.*" } })
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<Space>p', builtin.find_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>g', builtin.live_grep, {})
vim.keymap.set('n', '<Space>h', builtin.help_tags, {})

vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>Telescope lsp_definitions<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-i>', '<cmd>Telescope lsp_implementations<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Space>f', '<cmd>Telescope current_buffer_fuzzy_find<CR>', {noremap = true, silent = true})
