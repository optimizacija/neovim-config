-- npm i -g bash-language-server
require'lspconfig'.bashls.setup {
  filetypes = { "sh", "zsh" },
	on_attach = require'lsp'.on_attach
}
