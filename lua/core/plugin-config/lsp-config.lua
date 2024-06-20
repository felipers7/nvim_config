require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {"lua_ls","clangd","omnisharp_mono","cssls","html","zls"},
  PATH = "prepend"
})
local on_attach = function(_,_)
  vim.keymap.set('n','gd',vim.lsp.buf.hover, {})
  vim.keymap.set('n','gi',vim.lsp.buf.definition, {})
  vim.keymap.set('n','K',vim.lsp.buf.implementation, {})
end
require("lspconfig").lua_ls.setup{}
require("lspconfig").clangd.setup{}
require("lspconfig").omnisharp_mono.setup{}
require("lspconfig").cssls.setup{}
require("lspconfig").html.setup{}
require("lspconfig").zls.setup{}

