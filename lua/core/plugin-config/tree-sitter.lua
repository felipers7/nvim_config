require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {"typescript","javascript","go", "lua","css","vim", "html","elixir" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
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
