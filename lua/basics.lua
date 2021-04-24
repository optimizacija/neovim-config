-- ################# Basic settings ################ --

-- ================= Holy leader key ================= --

vim.g.mapleader = ','


-- ================= File management ================= --

vim.bo.swapfile = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.autoread = true -- auto file change detection

-- autocmds are currently not supported by nvim (0.5 nighlty)
vim.api.nvim_command([[
" Triger `autoread` when files changes on disk
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" Notification after file change
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
]])


-- ================= Scrolling ================= --

vim.o.scrolloff = 8 -- start scrolling when 8 lines away from margins


-- ================= Visualization ================= --

if vim.fn.has('termguicolors') == 1 then
  vim.o.termguicolors = true
end

-- TODO check what this does
vim.o.syntax = 'on'
vim.o.background = 'dark'

vim.api.nvim_command('colorscheme palenight')
vim.api.nvim_command('let g:lightline = { "colorscheme": "palenight" }')
-- turn on italics
vim.api.nvim_command('let g:palenight_terminal_italics=1')


-- ================= Indentation ================= --

-- pay attention to 'vim.bo' (buffer local options) and 'vim.o' (global options)
-- see :help options.txt

vim.bo.tabstop = 2 	  -- maximum width of tab character (measured in spaces)
vim.bo.shiftwidth = 2 	  -- size of indent (measured in spaces), should equal tabstop
vim.bo.softtabstop = 2 	  -- should be the same as the other two above
vim.bo.smartindent = true -- smart indenting on new line for C-like programs
vim.bo.autoindent = true  -- copy the indentation from previous line
vim.o.smarttab = true 	  -- tab infront of a line inserts blanks based on shiftwidth


-- ================= Number column ================= --

vim.wo.number = true -- see the number column


-- ================= Search ================= --


vim.o.ignorecase = true -- Ignorecase when searching
vim.o.incsearch = true	-- start searching on each keystroke
vim.o.smartcase = true	-- ignore case when lowercase, match case when capital case is used
vim.o.hlsearch = true		-- highlight the search results


-- ================= Performance ================= --

vim.o.lazyredraw = true -- useful for when executing macros.
vim.o.ttimeoutlen = 10  -- ms to wait for a key code seq to complete


-- ================= Misc ================= --

vim.wo.wrap = false -- don't wrap long text into multiple lines
vim.o.history = 10000 -- numbers of entries in history for ':' commands and search patterns (10000 = max)
vim.o.updatetime = 300 -- used for CursorHold event (for document highlighting detection)
vim.o.mouse = 'nv' -- allow mose in normal & visual mode

-- better autocomplete behaviour
-- menuone - show popup menu also when there is only one match available
-- preview - show extra information about currently selected completion
-- noinsert - do not insert any text for match until the user selects it from the menu
vim.o.completeopt='menuone,preview,noinsert'
