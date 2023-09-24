require'nvim-treesitter.configs'.setup {
  -- will install treesitter for all available languages
  ensure_installed = { 'lua', 'vim', 'rust', 'json', 'toml', 'bash', 'dockerfile' },
  highlight = {
    enable = true
  }
}
