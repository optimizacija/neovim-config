local opts = {silent = true, noremap = true}
vim.api.nvim_set_keymap('n', '<C-n>', '<Cmd>NvimTreeToggle<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>r', '<Cmd>NvimTreeRefresh<CR>', opts)
-- find the currently open file in tree
vim.api.nvim_set_keymap('n', '<leader>n', '<Cmd>NvimTreeFindFile<CR>', opts)

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
vim.g.nvim_tree_bindings = {
  { key = "<C-t>", cb = tree_cb("tabnew") },
  { key = "<CR>", cb = tree_cb("edit") },
  { key = "o", cb = tree_cb("edit") },
  { key = "<2-LeftMouse>", cb = tree_cb("edit") },
  { key = "<2-RightMouse>", cb = tree_cb("cd") },
  { key = "<Tab>", cb = tree_cb("preview") },
  { key = "R", cb = tree_cb("refresh") },
  { key = "a", cb = tree_cb("create") },
  { key = "d", cb = tree_cb("remove") },
  { key = "r", cb = tree_cb("rename") },
  { key = "x", cb = tree_cb("cut") },
  { key = "y", cb = tree_cb("copy") },
  { key = "p", cb = tree_cb("paste") },
  { key = "<", cb = tree_cb("dir_up") },
  { key = "q", cb = tree_cb("close") }
}

vim.g.nvim_tree_auto_close = 1 -- close tree when it's the last window
