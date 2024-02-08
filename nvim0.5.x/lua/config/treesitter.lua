require'nvim-treesitter.configs'.setup {
  ensure_installed = {"go", "javascript", "typescript", "rust", "lua", "ruby"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false,
  auto_install = true,
   highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
    }
}
