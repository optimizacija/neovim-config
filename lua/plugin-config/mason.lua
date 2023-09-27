-- IMPORTANT: neodev has to be run before lspconfg (or mason in this case)
require("neodev").setup()

require'mason'.setup()
require'mason-lspconfig'.setup {
    ensure_installed = {
        'bashls',
        'docker_compose_language_service',
        'dockerls',
        'jqls',
        'jsonls',
        'lua_ls',
        'marksman',
        'rust_analyzer',
        'taplo',
        'yamlls'
    },
}

require'lspconfig'.bashls.setup{
    filetypes = { "sh", "zsh" };
}
require'lspconfig'.docker_compose_language_service.setup{}
require'lspconfig'.dockerls.setup{}
require'lspconfig'.jqls.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.lua_ls.setup{
  library = {
    enabled = true,
    runtime = true,
    types = true,
    plugins = true,
  },
  setup_jsonls = true,
  lspconfig = true,
  pathStrict = true,

  settings = {
    Lua = {
      workspace = {
        checkThirdParty = false,
      },
    },
  },
}
require'lspconfig'.marksman.setup{}
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.taplo.setup{}
require'lspconfig'.yamlls.setup{}

vim.api.nvim_create_augroup('MyJqGroup', {})
vim.api.nvim_create_autocmd({'BufRead','BufNewFile'}, {
    group = 'MyJqGroup',
    pattern = {'*.jq'},
    command = 'set filetype=jq',
})
