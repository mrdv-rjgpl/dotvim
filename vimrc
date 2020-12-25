"Install plugins if required.
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf'
Plug 'preservim/NERDTree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"Spaces are easier to type then colons.
nnoremap <Space> :

"Line numbers are always helpful.
set nu

"Clearly demarcate whitespace characters (courtesy of praveenv253).
set listchars=extends:»,precedes:«,tab:·\ ,trail:◀
set list

"Fold all lines of the same or higher indent level...
set foldmethod=indent
"... but not unless asked to do so.
set nofoldenable

"Searches are easier when highlighted and intelligently case insensitive...
set hlsearch
set ignorecase
set smartcase

"... and vertically centered.
nnoremap n nzz
nnoremap N Nzz

"New windows are better off to the right and below existing windows...
set splitright
set splitbelow

"... and shifting between windows should be easier than it is by default.
nnoremap <C-Left>  <C-w><Left>
nnoremap <C-Right> <C-w><Right>
nnoremap <C-Up>    <C-w><Up>
nnoremap <C-Down>  <C-w><Down>

"Toggling paste mode comes in handy every now and then.
set pastetoggle=<F2>

"Certain filetypes are not meant to be opened in Vim.
set wildignore=*.o,*~,*.pyc,*.git,*.pdf

"C-style indentation.
"set shiftwidth=4
"set tabstop=4
filetype plugin indent on

"Configure airline and other visual aspects to your tastes.
colo newproggie
let g:airline_theme='newproggie'

"For exceeding 80 characters in a line"
if exists('+colorcolumn')
    set colorcolumn=81
else
    au BufWinEnter * let w:m2=matchadd('ColorColumn', '\%>81v.\+', -1)
endif

"Adding ctags related shortcuts"
map <C-\> :tab split<Enter>:exec("tag ".expand("<cword>"))<Enter>
map <C-]> :vsp <Enter>:exec("tag ".expand("<cword>"))<Enter>
