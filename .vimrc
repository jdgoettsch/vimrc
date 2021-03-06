filetype on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
call pathogen#infect('bundle/{}')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase
set smartcase
set hlsearch
set incsearch

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noexpandtab
set smarttab

set showmatch

set autoindent
set smartindent
set wrap

set laststatus=2
set wildmenu

syntax enable
set background=light
colorscheme solarized

set cursorline
set number 

set history=100
set ruler
set backspace=2
set scrolloff=8

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif

set wildignore=*.pyc,*.swp
let g:netrw_list_hide='*\.pyc,*\.swp,'

let g:syntastic_python_pylint_post_args="--max-line-length=120"
let g:pymode_options_max_line_length=120
let g:pymode_lint_options_pep8={'max_line_length': g:pymode_options_max_line_length}

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
set runtimepath+=~/.vim/my-snippets/

let g:ultisnips_python_style="sphinx"

map <F12> :TagbarToggle<CR>

let g:ale_linters = {
\	'python': ['flake8', 'mypy', 'pycodestyle'],
\}
