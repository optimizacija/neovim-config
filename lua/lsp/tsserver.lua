-- npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup {
  on_attach = require'lsp'.on_attach
}
