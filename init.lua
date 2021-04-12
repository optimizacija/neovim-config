require('plugins')

vim.g.mapleader = ','

-- copy
vim.api.nvim_set_keymap('n', '<C-c>', '"+y', { noremap = true, silent = true })
-- paste
vim.api.nvim_set_keymap('n', '<C-v>', '"+p', { noremap = true, silent = true })
-- cut
vim.api.nvim_set_keymap('n', '<C-x>', '"+d', { noremap = true, silent = true })
-- paste in insert mode
vim.api.nvim_set_keymap('i', '<C-v>', '"+pa', { noremap = true, silent = true })

-- shift the movement keys by 1 to the right
vim.api.nvim_set_keymap('', 'j', 'h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', 'k', 'j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', 'l', 'k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', 'č', 'l', { noremap = true, silent = true })

-- mapping ESC to ć
vim.api.nvim_set_keymap('n', 'ć', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'Ć', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'ć', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'Ć', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('c', 'ć', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('c', 'Ć', '<Esc>', { noremap = true, silent = true })
-- make the cursor stay on the same character when leaving insert mode
vim.api.nvim_set_keymap('i', 'ć', '<Esc>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'Ć', '<Esc>l', { noremap = true, silent = true })

-- fast scrolling
vim.api.nvim_set_keymap('n', 'K', '10j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'L', '10k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', '10j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'L', '10k', { noremap = true, silent = true })

-- stay in normal mode after inserting a new line
vim.api.nvim_set_keymap('', 'o', 'o <Bs><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', 'O', 'O <Bs><Esc>', { noremap = true, silent = true })

-- mapping that opens .vimrc in a split for quick editing
vim.api.nvim_set_keymap('n', '<Leader>ev', ':vsplit $MYVIMRC<CR>', { noremap = true, silent = true })
-- mapping that sources the vimrc in the current file
vim.api.nvim_set_keymap('n', '<Leader>sv', ':source $MYVIMRC<CR>', { noremap = true, silent = true })

-- Mapping U to Redo.
vim.api.nvim_set_keymap('', 'U', '<C-r>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<C-r>', '<NOP>', { noremap = true, silent = true })

-- indent via Tab
vim.api.nvim_set_keymap('n', '<Tab>', '>>_', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', '<<_', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Tab>', '>>_', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Tab>', '<<_', { noremap = true, silent = true })

-- window movement
vim.api.nvim_set_keymap('', '<C-w>j', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<C-w>k', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<C-w>l', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<C-w>č', '<C-w>l', { noremap = true, silent = true })

