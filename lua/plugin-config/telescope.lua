-- Find files using lua fuctions
local opts = { silent = true, noremap = true }
vim.api.nvim_set_keymap('n', '<leader>ff', '<Cmd>lua require(\'telescope.builtin\').find_files()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>fg', '<Cmd>lua require(\'telescope.builtin\').live_grep()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>fb', '<Cmd>lua require(\'telescope.builtin\').buffers()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>fh', '<Cmd>lua require(\'telescope.builtin\').help_tags()<CR>', opts)
