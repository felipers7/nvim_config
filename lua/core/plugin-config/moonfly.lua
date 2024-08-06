vim.cmd [[colorscheme OceanicNext]]

vim.api.nvim_set_hl(0, "Normal", {bg ="none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg ="none"})
vim.api.nvim_set_hl(0, "LineNr", {bg ="none"})
vim.api.nvim_set_hl(0, "SignColumn", {bg ="none"})
vim.api.nvim_set_hl(0, "EndOfBuffer", {bg ="none"})

--Html
vim.api.nvim_set_hl(0, '@tag.attribute.html', { fg = '#CB99C9' })
vim.api.nvim_set_hl(0, '@tag.delimiter.html', { fg= '#808080' })
vim.api.nvim_set_hl(0, '@tag.html', { fg= '#AEC6CF' })
vim.api.nvim_set_hl(0, '@string.html', { fg= '#d19a6b' })
-- Typescript
vim.api.nvim_set_hl(0, '@variable.builtin.typescript', { fg= '#99afb0' })
vim.api.nvim_set_hl(0, '@type.typescript', { fg= '#99afb0' })
vim.api.nvim_set_hl(0, '@keyword.modifier.typescript', { fg= '#a8dde3' })
vim.api.nvim_set_hl(0, '@keyword.typescript', { fg= '#a8dde3' })
vim.api.nvim_set_hl(0, '@lsp.type.class.typescript', { fg= '#57b9ba' })
vim.api.nvim_set_hl(0, '@lsp.type.interface.typescript', { fg= '#57b9ba' })
