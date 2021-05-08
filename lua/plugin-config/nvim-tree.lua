local opts = {silent = true, noremap = true}
vim.api.nvim_set_keymap('n', '<C-n>', '<Cmd>NvimTreeToggle<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>r', '<Cmd>NvimTreeRefresh<CR>', opts)
-- find the currently open file in tree
vim.api.nvim_set_keymap('n', '<leader>n', '<Cmd>NvimTreeFindFile<CR>', opts)

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
vim.g.nvim_tree_bindings = {
  ["<C-t>"]          = tree_cb("tabnew"),
  ["<CR>"]           = tree_cb("edit"),
  ["o"]              = tree_cb("edit"),
  ["<2-LeftMouse>"]  = tree_cb("edit"),
  ["<2-RightMouse>"] = tree_cb("cd"),
  ["<Tab>"]          = tree_cb("preview"),
  --["I"]              = tree_cb("toggle_ignored"),
  --["H"]              = tree_cb("toggle_dotfiles"),
  ["R"]              = tree_cb("refresh"),
  ["a"]              = tree_cb("create"),
  ["d"]              = tree_cb("remove"),
  ["r"]              = tree_cb("rename"),
  ["x"]              = tree_cb("cut"),
  ["y"]              = tree_cb("copy"),
  ["p"]              = tree_cb("paste"),
  ["<"]              = tree_cb("dir_up"),
  ["q"]              = tree_cb("close"),
}

vim.g.nvim_tree_auto_close = 1 -- close tree when it's the last window
