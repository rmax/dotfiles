" vimrc settings from svn.python.org
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

highlight BadWhitespace ctermbg=red guibg=red

match BadWhitespace /^\t\+/
match BadWhitespace /\s\+$/

set textwidth=78
set foldmethod=indent

" - c do not insert comment leader when wrapping based on textwidth
" - o do not insert comment leader when using 'o' or 'O'
" - r do not insert comment leader when hitting <Enter>
set formatoptions-=c formatoptions-=o formatoptions-=r

au BufNewFile *.py,*.pyw set fileformat=unix
au BufNewFile *.py,*.pyw set encoding=utf-8

let python_highlight_all=1
syntax on

set nocindent

"pylint compiler options
compiler pylint
let g:pylint_onwrite = 0
let g:pylint_show_rate = 1
let g:pylint_cwindow = 1

