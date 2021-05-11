-- :LspInstall docker
require'lspconfig'.dockerls.setup {
  cmd = { DATA_PATH .. "/lspinstall/dockerfile/node_modules/.bin/docker-langserver", "--stdio" },
  filetypes = { "Dockerfile", "dockerfile" },
  root_dir = require('lspconfig/util').root_pattern("Dockerfile"),
  on_attach = require'lsp'.on_attach
}
