-- :LspInstall typescript
require'lspconfig'.tsserver.setup {
  cmd = { DATA_PATH .. '/lspinstall/typescript/node_modules/.bin/typescript-language-server', '--stdio' },
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  root_dir = require('lspconfig/util').root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
  on_attach = require'lsp'.on_attach
}
