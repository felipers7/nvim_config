require'nvim-treesitter.configs'.setup {
  ensure_installed = {"html","typescript","javascript","go", "lua","css","vim", "elixir" },

  install = {
    compilers = {"zig"}
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  install_info = {
    compiler = "zig cc",
  }
}
