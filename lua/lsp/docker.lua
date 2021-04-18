-- npm install -g dockerfile-language-server-nodejs
require'lspconfig'.dockerls.setup {
  on_attach = require'lsp'.on_attach
}
