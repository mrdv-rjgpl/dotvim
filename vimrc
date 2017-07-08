call plug#begin('~/.vim/plugins/')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'NewProggie/NewProggie-Color-Scheme'
call plug#end()
nnoremap <Space> :
set nu
"Search related stuff.
set hlsearch
set ignorecase
set smartcase

"C-style indentation.
set shiftwidth=4
set tabstop=4
filetype plugin indent on

"Some convenient Eclipse functionality.
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

"Temporary map to make Simulink commits easier."
"nnoremap f iFSW-FDS<space>name<space>matching<space>campaign:<space>Modified<space>interfaces,<space>constants,<space>and<space>data<space>command<space>parameters<space>of<Space>

"Easy way to toggle paste.
set pastetoggle=<F2>

"Airline stuff
let g:airline_powerline_fonts = 1
let g:airline_theme='newproggie'

"Theme
colo newproggie

"The following lines are courtesy praveenv253.
"Enable characters to demarcate the kind of whitespace used.
set listchars=extends:»,precedes:«,tab:·\ ,trail:◀
set list
"Add the git branch to the light status line.
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
"Ignore certain filetypes while auto-completing.
set wildignore=*.o,*~,*.pyc,.git
"Set foldmethod to fold all lines of the same or higher indent level...
set foldmethod=indent
"... but keep it turned off at startup
set nofoldenable
"New vertical windows appear on the right of the existing window
set splitright

