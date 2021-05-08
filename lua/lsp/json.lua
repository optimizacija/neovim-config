-- npm install -g vscode-json-languageserver
require'lspconfig'.jsonls.setup {
  cmd = {
    'node',
    DATA_PATH .. "/lspinstall/json/vscode-json/json-language-features/server/dist/node/jsonServerMain.js",
    '--stdio'
  },
  commands = {
    Format = {
      function()
        vim.lsp.buf.range_formatting({}, {0, 0}, {vim.fn.line("$"), 0})
      end
    }
  },
  on_attach = require'lsp'.on_attach
}
