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
set expandtab

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

" 8 colors: torte desert delek koehler peachpuff zellner
" 256 colors: darkburn desert256 inkpot zenburn graywh
if &t_Co == 256
  colorscheme inkpot
else
  colorscheme graywh
endif

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

noremap <silent> <f2> :call StripTrailingWhitespace()<cr>

" tab navigation
noremap <silent> <c-right> :tabnext<cr>
noremap <silent> <c-left> :tabprevious<cr>

" NERD Tree
let g:NERDTreeQuitOnOpen = 1
noremap <f3> :NERDTreeToggle<cr><c-w>h

" Taglist
let g:Tlist_Process_File_Always = 1
let g:Tlist_Exit_OnlyWindow = 1
let g:Tlist_Auto_Highlight_Tag = 1

noremap <f4> :TlistToggle<cr><c-w>h
noremap <silent><a-right> <c-]>
noremap <silent><a-left> <c-T>


" cursor column (highlight CursorColumn)
autocmd insertLeave * set nocursorcolumn
autocmd insertEnter * set cursorcolumn

" supertab
let g:SuperTabCompletionType = 'context'
let g:complType = "\<C-n>"

" tex-setup
let g:tex_flavor='latex'


" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo
