-- :LspInstall css
require'lspconfig'.cssls.setup {
  cmd = { 
	  'node',
	  DATA_PATH .. '/lspinstall/css/vscode-css/css-language-features/server/dist/node/cssServerMain.js',
  	  '--stdio' 
  },
  on_attach = require'lsp'.on_attach
}
