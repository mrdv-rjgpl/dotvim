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

"Load a color scheme that's easier on the eye.
colo newproggie

"Easy way to toggle paste.
set pastetoggle=<F2>

"The following lines are courtesy praveenv253.
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

"Adding a template for .cpp files"
au BufNewFile *.cpp 0r ~/.vim/templates/template.cpp | let IndentStyle = "cpp"

"Adding ctags related shortcuts"
map <C-\> :tab split<Enter>:exec("tag ".expand("<cword>"))<Enter>
map <C-]> :vsp <Enter>:exec("tag ".expand("<cword>"))<Enter>

"Adding roslaunch XML syntax highlighting"
autocmd BufRead,BufNewFile *.launch setfiletype roslaunch

"Adding XML lint based formatting to XML files"
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
au FileType roslaunch setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

"Adding powerline related code"
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set rtp+=/usr/local/lib/python3/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

"Splitting below"
set splitbelow
source $VIMRUNTIME/macros/matchit.vim
