
   -- Set up lspconfig.
   local capabilities = require('cmp_nvim_lsp').default_capabilities()
   -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.

   require('mason').setup()
   require('mason-lspconfig').setup({
    ensure_installed = { "lua_ls","solargraph","tsserver","rust_analyzer" }
   })


   require('lspconfig').lua_ls.setup {
     capabilities = capabilities
   }
   require('lspconfig').solargraph.setup {
    capabilities = capabilities
  }
   require('lspconfig').rust_analyzer.setup {
    capabilities = capabilities
  }
   require('lspconfig').tsserver.setup {
    capabilities = capabilities
  }
 
