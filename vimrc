"Install NERDTree.
call plug#begin()
Plug 'preservim/NERDTree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"Because spaces are easier to type then colons
nnoremap <Space> :

"Line numbers are always helpful
set nu

"Search related stuff.
set hlsearch
set ignorecase
set smartcase

"Centre the current search result.
nnoremap n nzz
nnoremap N Nzz

"C-style indentation.
"set shiftwidth=4
"set tabstop=4
filetype plugin indent on

"Some convenient Eclipse functionality.
"inoremap ( ()<Esc>i
"inoremap { {}<Esc>i
"inoremap [ []<Esc>i
"inoremap ' ''<Esc>i
"inoremap " ""<Esc>i

"Load a color scheme that's easier on the eye.
"colo newproggie

"Easy way to toggle paste.
set pastetoggle=<F2>

"The following lines are courtesy of praveenv253.
"Enable characters to demarcate the kind of whitespace used.
set listchars=extends:»,precedes:«,tab:·\ ,trail:◀
set list
"Ignore certain filetypes while auto-completing.
set wildignore=*.o,*~,*.pyc,*.git,*.pdf

"Set foldmethod to fold all lines of the same or higher indent level...
set foldmethod=indent
"... but keep it turned off at startup
set nofoldenable

"New vertical windows appear on the right of the existing window
set splitright
"New horizontal windows appear below the existing window
set splitbelow

"For there are things faster than <C-w>w"
nnoremap <C-Left>  <C-w><Left>
nnoremap <C-Right> <C-w><Right>
nnoremap <C-Up>    <C-w><Up>
nnoremap <C-Down>  <C-w><Down>

"For exceeding 80 characters in a line"
if exists('+colorcolumn')
    set colorcolumn=81
else
    au BufWinEnter * let w:m2=matchadd('ColorColumn', '\%>81v.\+', -1)
endif

"Adding ctags related shortcuts"
map <C-\> :tab split<Enter>:exec("tag ".expand("<cword>"))<Enter>
map <C-]> :vsp <Enter>:exec("tag ".expand("<cword>"))<Enter>
