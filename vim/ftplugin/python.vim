" vimrc settings from svn.python.org
"
let g:python_highlight_all=1
syntax on

set nocindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set textwidth=78
set fileformat=unix
set encoding=utf-8

" - c do insert comment leader when wrapping based on textwidth
" - o do not insert comment leader when using 'o' or 'O'
" - r do not insert comment leader when hitting <Enter>
set formatoptions+=c formatoptions-=o formatoptions-=r

highlight BadWhitespace term=standout ctermbg=red guibg=red
match BadWhitespace /^\t\+/
match BadWhitespace /\s\+$/

