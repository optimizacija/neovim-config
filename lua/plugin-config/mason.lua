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
        'vimls'
    },
}

require'lspconfig'.lua_ls.setup{}
require'lspconfig'.rust_analyzer.setup{}
