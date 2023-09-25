require'mason'.setup()
require("mason-lspconfig").setup {
    ensure_installed = {
        'lua_ls',
        'rust_analyzer',
        'bashls',
        'taplo',
        'dockerls',
        'docker_compose_language_service',
        'jsonls',
        'marksman',
        'yamlls'
    },
}

require'lspconfig'.lua_ls.setup{}
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.taplo.setup{}
require'lspconfig'.dockerls.setup{}
require'lspconfig'.docker_compose_language_service.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.marksman.setup{}
require'lspconfig'.yamlls.setup{}
