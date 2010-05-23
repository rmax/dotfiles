" global vim settings

" custom local leader
let mapleader = ","
let g:mapleader = ","

" fast saving
map <leader>w :w!<CR>
" fast vimrc reload
map <leader>r :source ~/.vimrc<CR>
" fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<CR>
" when vimrc is edited, reload it
autocmd! BufWritePost vimrc source ~/.vimrc
map <leader>S :call ReloadAllSnippets()<CR>

" enable file type detection
syntax enable
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set noexpandtab

set fileformat=unix
set encoding=utf-8
set fileencodings=utf-8,latin1
set noeol

set nocompatible
set wildmenu
set wildmode=list:longest
set wildignore=*.o,*.class,*~,*.lo,*.bak,*.pyc
set hidden

set shm+=Im
set showmatch
set showcmd
set history=900

set winminheight=1
set scrolloff=5
set sidescroll=5

" backup
set backup
set backupext=.bak
set backupdir=~/.vim/backup/
set dir=~/.vim/tmp/

set lazyredraw
set printoptions+=syntax:y,number:y
set nofsync
set vb t_vb=
set breakat=\ \ !@*-+;:,.?

set incsearch
set hlsearch
set ignorecase
set number
set nowrap
set linebreak
set list listchars=trail:·,tab:>-,extends:>,precedes:<
set mouse=a

colorscheme zellner " torte desert delek koehler peachpuff zellner

" remember last cursor position
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" nice status bar
set laststatus=2
set statusline=
set statusline+=%<%f%h%m%r%h%w%y
set statusline+=\ [%{strlen(&ft)?&ft:'none'},%{&enc},%{&ff}]
set statusline+=%=
set statusline+=c:%c%V\ l:%l,%L\ %P


" Nice window title
if has('title') && (has('gui_running') || &title)
    set titlestring=
    set titlestring+=%f\                                              " file name
    set titlestring+=%h%m%r%w                                         " flags
    set titlestring+=\ -\ %{v:progname}                               " program name
    set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')}  " working directory
endif

function! StripTrailingWhitespace()
	normal mZ
	%s/\s\+$//e
	if line("'Z") != line(".")
		echo "Stripped whitespace\n"
	endif
	normal `Z
endfunction

map <f2> :call StripTrailingWhitespace()<CR>
map! <f2> :call StripTrailingWhitespace()<CR>

