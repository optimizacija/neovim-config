local opts = {silent = true, noremap = true}
vim.api.nvim_set_keymap('n', '<C-n>', '<Cmd>NvimTreeToggle<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>r', '<Cmd>NvimTreeRefresh<CR>', opts)
-- find the currently open file in tree
vim.api.nvim_set_keymap('n', '<leader>n', '<Cmd>NvimTreeFindFile<CR>', opts)


local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mapping
    vim.keymap.set('n', '<CR>', api.node.open.edit, opts("Edit"))
    vim.keymap.set('n', '<2-LeftMouse>', api.node.open.edit, opts("Edit"))
    vim.keymap.set('n', 'q', api.tree.close, opts("Close"))
    vim.keymap.set('n', 'R', api.tree.reload, opts("Refresh"))
    vim.keymap.set('n', 'a', api.fs.create, opts("Create"))
    vim.keymap.set('n', 'd', api.fs.remove, opts("Remove"))
    vim.keymap.set('n', 'r', api.fs.rename, opts("Rename"))
    vim.keymap.set('n', 'x', api.fs.cut, opts("Cut"))
    vim.keymap.set('n', 'y', api.fs.copy, opts("Copy"))
    vim.keymap.set('n', 'p', api.fs.paste, opts("Paste"))
end


require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  view = {
    width = 30,
    -- hide_root_folder = false,
    side = 'left',
    --mappings = {
      --custom_only = false,
      --list = list,
    --}
  },
  on_attach = my_on_attach
}
