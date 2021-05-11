-- defaults
local opts = { noremap = true, silent = true }
-- TODO: disabled since trying out "clipboard = unnamedplus" option
-- copy
--vim.api.nvim_set_keymap('', '<C-c>', '"+y', opts)
-- paste
--vim.api.nvim_set_keymap('', '<C-v>', '"+p', opts)
-- cut
--vim.api.nvim_set_keymap('', '<C-x>', '"+d', opts)
-- paste in insert mode
--vim.api.nvim_set_keymap('i', '<C-v>', '<Esc>"+pa', opts)

-- shift the movement keys by 0 to the right
vim.api.nvim_set_keymap('', 'j', 'h', opts)
vim.api.nvim_set_keymap('', 'k', 'j', opts)
vim.api.nvim_set_keymap('', 'l', 'k', opts)
vim.api.nvim_set_keymap('', 'č', 'l', opts)

-- mapping ESC to ć
vim.api.nvim_set_keymap('n', 'ć', '<Esc>', opts)
vim.api.nvim_set_keymap('n', 'Ć', '<Esc>', opts)
vim.api.nvim_set_keymap('v', 'ć', '<Esc>', opts)
vim.api.nvim_set_keymap('v', 'Ć', '<Esc>', opts)
vim.api.nvim_set_keymap('c', 'ć', '<Esc>', opts)
vim.api.nvim_set_keymap('c', 'Ć', '<Esc>', opts)
-- make the cursor stay on the same character when leaving insert mode
vim.api.nvim_set_keymap('i', 'ć', '<Esc>l', opts)
vim.api.nvim_set_keymap('i', 'Ć', '<Esc>l', opts)

-- fast scrolling
vim.api.nvim_set_keymap('n', 'K', '9j', opts)
vim.api.nvim_set_keymap('n', 'L', '9k', opts)
vim.api.nvim_set_keymap('v', 'K', '9j', opts)
vim.api.nvim_set_keymap('v', 'L', '9k', opts)

-- stay in normal mode after inserting a new line
vim.api.nvim_set_keymap('', 'o', 'o <Bs><Esc>', opts)
vim.api.nvim_set_keymap('', 'O', 'O <Bs><Esc>', opts)

-- mapping that opens .vimrc in a new tab for quick editing
vim.api.nvim_set_keymap('n', '<Leader>ev', '<Cmd>tabe $MYVIMRC<CR>', opts)
-- mapping that sources the vimrc in the current filea doesn't work, should change all require calls to dofile
-- or clear all require cache and reimport
-- vim.api.nvim_set_keymap('n', '<Leader>sv', '<Cmd>lua dofile(vim.fn.stdpath(\'config\')..\'/init.lua\')<CR>', { noremap = true, silent = false })

-- Mapping U to Redo.
vim.api.nvim_set_keymap('', 'U', '<C-r>', opts)
vim.api.nvim_set_keymap('', '<C-r>', '<NOP>', opts)

-- indent via Tab
vim.api.nvim_set_keymap('n', '<Tab>', '>>_', opts)
vim.api.nvim_set_keymap('n', '<S-Tab>', '<<_', opts)
vim.api.nvim_set_keymap('v', '<Tab>', '>>_', opts)
vim.api.nvim_set_keymap('v', '<S-Tab>', '<<_', opts)
vim.api.nvim_set_keymap('i', '<Tab>', '\t', opts)
vim.api.nvim_set_keymap('i', '<S-Tab>', '\b', opts)

-- window movement
vim.api.nvim_set_keymap('', '<C-w>j', '<C-w>h', opts)
vim.api.nvim_set_keymap('', '<C-w>k', '<C-w>j', opts)
vim.api.nvim_set_keymap('', '<C-w>l', '<C-w>k', opts)
vim.api.nvim_set_keymap('', '<C-w>č', '<C-w>l', opts)

-- opening terminal with shortcut
vim.api.nvim_set_keymap('', '<Leader><CR>', '<Cmd>silent !$TERM &<CR>', opts)

-- jumping back and forth
vim.api.nvim_set_keymap('', '<C-K>', '<C-O>', opts)
vim.api.nvim_set_keymap('', '<C-L>', '<C-I>', opts)

-- LSP
vim.api.nvim_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gt', '<Cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gf', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
-- usages replaced by LspSaga plugin
-- vim.api.nvim_set_keymap('n', 'ga', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts) -- eg. autoimport
-- vim.api.nvim_set_keymap('n', 'gn', '<Cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
-- vim.api.nvim_set_keymap('n', 'gN', '<Cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
-- vim.api.nvim_set_keymap('n', 'h', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
-- vim.api.nvim_set_keymap('n', 'gr', '<Cmd>lua vim.lsp.buf.rename()<CR>', opts)

-- autocomplete
-- if autocomplete popup menu opens pressing enter will complete the first match
-- vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.smart_tab()', {expr = true, noremap = true})
vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? "<C-n><Esc>a" : "<CR>"', {expr = true, noremap = true, silent = true})
