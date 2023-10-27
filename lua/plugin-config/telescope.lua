-- Find files using lua fuctions
local opts = { silent = true, noremap = true }
vim.api.nvim_set_keymap('n', '<Leader>ff', "<Cmd>lua require'telescope.builtin'.find_files()<CR>", {silent=false, noremap=true})
vim.api.nvim_set_keymap('n', '<Leader>fd', "<Cmd>lua require'telescope.builtin'.live_grep()<CR>", opts)
-- live_grep_args allows to search with ripgrep's params
-- this makes it possible to use flags such as "-P" which enables lookaround features, for example: (?<\w)
-- -- only if your local installation of ripgrep allows the "-P" extension
vim.api.nvim_set_keymap('n', '<leader>fa', "<Cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", opts)

local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        -- program to use for searching with its arguments
        find_command = {'rg', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case'},
        prompt_prefix = ' ', -- symbol on prompt window
        selection_caret = ' ', -- symbol on selected row in results window
        entry_prefix = '  ', -- symbol on non-selected rows in results window
        initial_mode = 'insert', -- start in insert mode
        selection_strategy = 'reset', -- what happens to selection when list changes
        sorting_strategy = 'ascending', -- start with most important search on top
        layout_strategy = 'vertical',
        layout_config = {
            vertical = {
                width = 0.9,
                height = 0.9,
                mirror = true, -- windows should be in this order from top to bottom: search, results, preview
                prompt_position = 'top',
                preview_cutoff = 0,
            }
        },
        --preview = {
            --filesize_limit = 3, -- disable preview for files bigger than specified number of MB
        --},
        path_display = {'tail'},
        file_sorter = require'telescope.sorters'.get_fuzzy_file,
        file_ignore_patterns = {'node_modules/.*'}, -- never search in node_modules/ dir
        generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
        display_path = true,
        winblend = 0, -- window should not be transparent
        color_devicons = true, -- colorize used icons
        set_env = {['COLORTERM'] = 'truecolor'}, -- use all the colors
        mappings = {
            i = {
                ['<C-k>'] = actions.move_selection_next,
                ['<C-l>'] = actions.move_selection_previous,
                ['<C-q>'] = actions.smart_send_to_qflist + actions.open_qflist,
                -- ['ć'] = actions.close,
                ['<CR>'] = actions.select_default + actions.center,
            },
            n = {
                ['<C-k>'] = actions.move_selection_next,
                ['<C-l>'] = actions.move_selection_previous,
                ['<C-q>'] = actions.smart_send_to_qflist + actions.open_qflist,
                ['ć'] = actions.close,
            }
        }
    },
}
