-- tab movement
local opts = {noremap = true, silent = true}
vim.api.nvim_set_keymap('', 'J', '<Cmd>BufferPrevious<CR>', opts)
vim.api.nvim_set_keymap('', 'Č', '<Cmd>BufferNext<CR>', opts)
vim.api.nvim_set_keymap('', 'X', '<Cmd>BufferClose<CR>', opts)
