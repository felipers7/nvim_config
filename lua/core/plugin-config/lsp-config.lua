--require("java").setup()
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {"jdtls","tsserver","lua_ls","clangd","omnisharp_mono","cssls","html","zls","angularls", "golangci_lint_ls","gopls","elixirls"},
  PATH = "prepend"
})
local on_attach = function(_,_)

  vim.keymap.set('n','ca',vim.lsp.buf.code_action, {})
  vim.keymap.set('n','<Space>rn',vim.lsp.buf.rename, {})
  vim.keymap.set('n','K',vim.lsp.buf.hover, {})
  vim.keymap.set('n','gd',vim.lsp.buf.definition, {})
  vim.keymap.set('n','gi',vim.lsp.buf.implementation, {})
end
require("lspconfig").lua_ls.setup{}
require("lspconfig").clangd.setup{}
require("lspconfig").omnisharp_mono.setup{}
require("lspconfig").cssls.setup{on_attach = on_attach}
require("lspconfig").html.setup{on_attach = on_attach}
require("lspconfig").zls.setup{}
--require("lspconfig").golangci_lint_ls.setup{on_attach = on_attach}
require("lspconfig").gopls.setup{on_attach=on_attach}
require("lspconfig").elixirls.setup{}
require("lspconfig").angularls.setup{on_attach=on_attach}
require("lspconfig").tsserver.setup{on_attach=on_attach}
require("lspconfig").jdtls.setup{
  on_attach=on_attach,
  java = "C:/Program Files/Java/jdk-17/bin",
  cmd = {
    "jdtls",
    "--jvm-arg=" .. string.format("-javaagent:%s", vim.fn.expand "$MASON/share/jdtls/lombok.jar"),
  },
}
