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
"Centre the current search result.
nnoremap n nzz
nnoremap N Nzz

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
set wildignore=*.o,*~,*.pyc,*.git,*.pdf
"Set foldmethod to fold all lines of the same or higher indent level...
set foldmethod=indent
"... but keep it turned off at startup
set nofoldenable
"New vertical windows appear on the right of the existing window
set splitright
"For there are things faster than <C-w>w"
nnoremap <C-Left>  <C-w><Left>
nnoremap <C-Right> <C-w><Right>
nnoremap <C-Up>    <C-w><Up>
nnoremap <C-Down>  <C-w><Down>

"For exceeding 120 characters in a line"
if exists('+colorcolumn')
    set colorcolumn=120
else
    au BufWinEnter * let w:m2=matchadd('ColorColumn', '\%>120v.\+', -1)
endif

"Adding a template for .cpp files"
au BufNewFile *.cpp 0r ~/.vim/templates/template.cpp | let IndentStyle = "cpp"

"Adding ctags related shortcuts"
map <C-\> :tab split<Enter>:exec("tag ".expand("<cword>"))<Enter>
map <C-]> :vsp <Enter>:exec("tag ".expand("<cword>"))<Enter>

"Adding roslaunch XML syntax highlighting"
autocmd BufRead,BufNewFile *.launch setfiletype roslaunch
