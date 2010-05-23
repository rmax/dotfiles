" vimrc settings from svn.python.org
"
syntax on
let python_highlight_all=1

"pylint compiler options
compiler pylint
let g:pylint_onwrite = 0
let g:pylint_show_rate = 1
let g:pylint_cwindow = 1

highlight BadWhitespace term=standout ctermbg=red guibg=red
match BadWhitespace /^\t\+/
match BadWhitespace /\s\+$/

set nocindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set textwidth=78
set fileformat=unix
set encoding=utf-8

" - c do insert comment leader when wrapping based on textwidth
" - r do insert comment leader when hitting <Enter>
" - o do not insert comment leader when using 'o' or 'O'
set formatoptions+=c formatoptions-=o formatoptions+=r

