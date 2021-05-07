-- settings for both plugins:
-- 'lukas-reineke/indent-blankline.nvim'
-- 'Yggdroot/indentLine'

vim.api.nvim_command("let g:indentLine_char = '⎸'")
vim.api.nvim_command("let g:indentLine_fileTypeExclude = ['text', 'markdown', 'help']")
vim.api.nvim_command("let g:indentLine_bufNameExclude = ['STARTIFY', 'NVIMTREE']")
vim.api.nvim_command("let g:indent_blankline_extra_indent_level = -1")
