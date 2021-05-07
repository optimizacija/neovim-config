local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', 'ga', '<Cmd>lua require("lspsaga.codeaction").code_action()<CR>', opts) -- eg. autoimport
vim.api.nvim_set_keymap('v', 'ga', ':<C-U>lua require("lspsaga.codeaction").range_code_action()<CR>', opts) -- eg. autoimport
vim.api.nvim_set_keymap('n', 'h', '<Cmd>lua require("lspsaga.hover").render_hover_doc()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gr', '<Cmd>lua require("lspsaga.rename").rename()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gn', '<Cmd>lua require"lspsaga.diagnostic".lsp_jump_diagnostic_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gN', '<Cmd>lua require"lspsaga.diagnostic".lsp_jump_diagnostic_next()<CR>', opts)
