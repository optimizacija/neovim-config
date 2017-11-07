" (_)_ __ (_) |___   _(_)_ __ ___  
" | | '_ \| | __\ \ / / | '_ ` _ \ 
" | | | | | | |_ \ V /| | | | | | |
" |_|_| |_|_|\__(_)_/ |_|_| |_| |_|
 
" ==================== VIM PLUG ==================

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes ''
 
" autocomplete - deoplete 
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-clang'

" autocomplete - roxma
"Plug 'roxma/nvim-completion-manager'
"Plug 'roxma/ncm-clang'
 
" ale - linter / autocompletion / formatter
Plug 'w0rp/ale'

" auto formater
Plug 'rhysd/vim-clang-format'

" nerd tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" surround vim
Plug 'tpope/vim-surround'

" nerd commenter
Plug 'scrooloose/nerdcommenter'

" airline (powerline)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" enhanced highlight
Plug 'octol/vim-cpp-enhanced-highlight'

" ctags indexer
Plug 'vim-scripts/DfrankUtil'
Plug 'vim-scripts/vimprj'
Plug 'vim-scripts/indexer.tar.gz'

" UltiSnips
Plug 'SirVer/ultisnips'

" easy motion
Plug 'easymotion/vim-easymotion'

" A - for switching between source and header files
Plug 'vim-scripts/a.vim'

" colorscheme
"Plug 'wombat256mod.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
Plug 'tpope/vim-vividchalk'
Plug 'lokaltog/vim-distinguished'

" auto-close (for parenthesis)
Plug 'jiangmiao/auto-pairs'

" ctrlp
Plug 'kien/ctrlp.vim'

" glsl color
Plug 'tikhomirov/vim-glsl'

call plug#end()			


" ================ Suggestions ======================
 
" show wild menu (menu of suggestions) when typing commands in command mode
set path+=**
set wildmenu
set showcmd


" ================ File management ==================
 
" Turn off swap files
set noswapfile
set nobackup
set nowb
 
" TODO: improve behaviour
" reload files changed outside vim
set autoread
" Triger `autoread` when files changes on disk
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" Notification after file change
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None


" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default


" ================ Srolling =========================

" Start scrolling when we're 8 lines away from margins
set scrolloff=8

 
" ================ Encoding =========================

"set encoding to utf8
if &encoding != 'utf-8'
    set encoding=utf-8              "Necessary to show Unicode glyphs
endif


" ================ Keyboard bindings ================
 
" noremap - no recursive mapping

" set the leader key to comma
let mapleader = ','

" clipboard
" copy
noremap <C-c> "+y
" paste
noremap <C-v> "+p
" cut
noremap <C-x> "+d
" paste in insert mode
inoremap <C-v> <Esc>"+pa

" shift the movement keys by 1 to the right
noremap j h
noremap k j
noremap l k
noremap č l

" mapping ESC to ć
nnoremap ć <Esc>
nnoremap Ć <Esc>
inoremap ć <Esc>
inoremap Ć <Esc>
vnoremap ć <Esc>
vnoremap Ć <Esc>
cnoremap ć <Esc>
cnoremap Ć <Esc>
" make the cursor stay on the same character when leaving insert mode
inoremap ć <Esc>l
inoremap Ć <Esc>l

" fast scrolling
nnoremap K 10j
nnoremap L 10k
vnoremap K 10j
vnoremap L 10k

" stay in normal mode after inserting a new line
noremap o o <Bs><Esc>
noremap O O <Bs><Esc>

" mapping that opens .vimrc in a split for quick editing
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
" mapping that sources the vimrc in the current file
nnoremap <leader>sv :source $MYVIMRC<CR>

" Mapping U to Redo.
noremap U <c-r>
noremap <c-r> <NOP>


" ================ Visualization ====================
 
syntax on
set background=dark
colorscheme hybrid

" enable 256bit colors - also: override gnome-terminal's settings
set t_Co=256


" ================ Indentation ======================

set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab


" ================ Number column ====================
 
" numbers
set number " see the line number column

" Toggle relative numbering, and set to absolute on loss of focus or insert mode
autocmd InsertEnter * :set nornu
autocmd InsertLeave * :set rnu
" we don't want to see relative numbering while debugging
" debugger uses its own window, so we can disable rnu when source window loses
" focus
autocmd BufLeave * :set nornu
autocmd BufEnter * call SetRNU()
function! SetRNU()
    if(mode()!='i')
        set rnu 
    endif
endfunction


" ================ Searching ========================

" Ignorecase when searching
set ignorecase

" incremental search - Vim starts searching when we start typing
set incsearch

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" toggle search highlighting
nnoremap <F3> :set hlsearch!<CR>


" ================ Performance ======================

" fix slow scrolling that occurs when using mouse and relative numbers
set lazyredraw
" vim timeout (forgot why I need this or if I do at all)
set ttyfast
set ttimeoutlen=10


" ================ Abbreviations ====================

iab wiht with
iab whit with
iab ture true
iab flase false
iab wieght weight
iab hieght height
iab tihs this
iab mian main


" ================ Misc =============================

" highlight matching braces
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=0

" When the last window will have a status line (2 = always)
set laststatus=2

" disable wrapping of long lines into multiple lines
set nowrap

" history
set history=1000

" on some systems the backspace does not work as expected.
" this fixes the problem
set backspace=indent,eol,start

" to avoid hitting:
" 'press ENTER or type command to continue'
" add 'silent' keyword before the command
" 
" open a gnome-terminal with a shortcut
noremap <leader><CR> :silent !gnome-terminal<CR>

"disable preview window
set completeopt-=preview


" ================ Plugins ==========================

" ################ Airline ##########################

" vim airline fonts
if !exists('g:airline_symbols')
	let g:airline_symbols= {}
endif

" unicode symbols
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_powerline_fonts = 1


" ################ NERDTree #########################
 
" shift+i (show hidden files)
 
" ctrl+n open/closes nerd tree
noremap <C-n> :NERDTreeToggle<CR>

" quit nerd tree on file open
let g:NERDTreeQuitOnOpen = 1


" ################ UltiSnips ########################

" make a dir Ultisnips in: '~/.config/nvim/UltiSnips/'
" and put your snippets in there
" eg. cpp.snippets

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsUsePythonVersion = 3


" ################ deoplete #########################
 
" TODO: improve / fix:
"   std suggestions doesn't work
"   suggestions load for too long
"   maybe go back to ycm and make it update correctly
"   by using only init.vim? 
"   (configure.sh --clang-completer has to be run from
"   this file upon update, instead of running it 
"   manually everytime)
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-5.0/lib/libclang.so.1'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'

 
" ################ Ale ##############################
 
" autocompletion
let g:ale_completion_enabled = 1

" linter
 let g:ale_linters = {
            \   'cpp': ['clang']
            \}
let g:ale_cpp_clang_options = '-std=c++1z -O0 -Wextra -Wall -Wpedantic'
"let g:ale_cpp_cpplint_options = '-std=c++1z -O0 -Wextra -Wall -Wpedantic'
"let g:ale_cpp_gcc_options = '-std=c++1z -O0 -Wextra -Wall -Wpedantic'
"let g:ale_cpp_clangtidy_options = '-std=c++1z'
"let g:ale_cpp_clangcheck_options = '-std=c++1z -O0 -Wextra -Wall -Wpedantic'
"let g:ale_cpp_cppcheck_options = '-std=c++1z -O0 -Wextra -Wall -Wpedantic'

 
" ################ Neomake ##########################

" TODO: make the entire error highlight, not just 
"       the first character
" TODO: make the highlight brighter

" debugging: 
"let g:neomake_verbose = 3

"let g:neomake_cpp_enabled_makers=['clang']
"let g:neomake_cpp_clang_maker = {
   "\ 'exe': 'clang++',
   "\ 'args': [ '-std=c++1z', '-O0' ,'-Wextra', '-Wall', '-Wpedantic'],
   "\ 'errorformat':
            "\ '%-G%f:%s:,' .
            "\ '%-G%f:%l: %#error: %#(Each undeclared identifier is reported only%.%#,' .
            "\ '%-G%f:%l: %#error: %#for each function it appears%.%#,' .
            "\ '%-GIn file included%.%#,' .
            "\ '%-G %#from %f:%l\,,' .
            "\ '%f:%l:%c: %trror: %m,' .
            "\ '%f:%l:%c: %tarning: %m,' .
            "\ '%I%f:%l:%c: note: %m,' .
            "\ '%f:%l:%c: %m,' .
            "\ '%f:%l: %trror: %m,' .
            "\ '%f:%l: %tarning: %m,'.
            "\ '%I%f:%l: note: %m,'.
            "\ '%f:%l: %m',
   "\ }
"let g:neomake_error_sign = {
            "\ 'text': '>>',
            "\ 'texthl': 'Error'
            "\}
"call neomake#signs#RedefineErrorSign()
"let g:neomake_warning_sign = {
            "\ 'text': '>>',
            "\ 'texthl': 'Warning'
            "\}
"call neomake#signs#RedefineWarningSign()
"call neomake#configure#automake({
  "\ 'TextChanged': {},
  "\ 'InsertLeave': {},
  "\ 'BufWritePost': {'delay': 0},
  "\ 'BufWinEnter': {},
  "\ }, 500)


" ################ Clang format #####################
 
" Clang format - auto formatting
 
let g:clang_format#command = 'clang-format-3.8'
let g:clang_format#style_options = {
            \ "BreakBeforeBraces" : "Attach",
            \ "UseTab" : "Never",
            \ "IndentWidth" : 4,
            \ "ColumnLimit" : 100,
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "AllowShortFunctionsOnASingleLine" : "false",
            \}

" shortcuts for autoformatting the entire file: Ctrl+j
inoremap <C-j> <Esc>:ClangFormat<CR>a
nnoremap <C-j> <Esc>:ClangFormat<CR>


" ################ A ################################
 
" A - switching between files
 
" header / source
nnoremap <F4> :A<CR>
inoremap <F4> <ESC>:A<CR>a

" file under cursor
nnoremap <F2> :IH<CR>
inoremap <F2> <ESC>:IH<CR>


" ################ Easymotion #######################
 
" shift the keys 1 to the right so they match my jklč config
map <leader><leader>j <Plug>(easymotion-linebackward)
map <leader><leader>k <Plug>(easymotion-j)
map <leader><leader>l <Plug>(easymotion-k)
map <leader><leader>č <Plug>(easymotion-lineforward)


" ################ CTAGS ############################
 
" TODO: learn more about this plugin and improve it
 
" change the stack pop to a more comfortable mapping
nnoremap <C-e> <C-]>

" CTAGS indexer
let g:indexer_disableCtagsWarning = 1



" TODO: add (cmake) project support
" TODO: add debugger support
