-- :LspInstall anoular
require'lspconfig'.angularls.setup {
    cmd = {DATA_PATH .. "/lspinstall/angular/node_modules/@angular/language-server/bin/ngserver", "--stdio"},
    filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx" },
    root_dir = require('lspconfig/util').root_pattern("angular.json", ".git"),
    on_attach = require'lsp'.on_attach,
}
