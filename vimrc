"
" global vim settings
"
set nocompatible

" load bundles
execute pathogen#infect()
execute pathogen#helptags()

" load default settings from vim-sensible
runtime! plugin/sensible.vim

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo+='10,\"100,:20,%,n~/.viminfo

" tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" keep indents chars
set copyindent

" file settings
set fileformat=unix
set encoding=utf-8
set fileencodings=utf-8,latin1
set noeol

" wildmenu settings
set wildmode=list:longest
set wildignore+=*.o,*.obj,*.class,*~,*.lo,*.bak,*.pyc

" hidden buffers
set hidden

" avoid intro prompt and abbreviate modified message
set shortmess+=Im

" enable backups
set backup

" search settings
set hlsearch
set ignorecase
set smartcase

" line settings
set number
set nowrap
set linebreak
set breakat=\ \ !@*-+;:,.?

" enable mouse
set mouse=a

" print
set printoptions+=syntax:y,number:y

" don't fsync on save
set nofsync

" visual bell
set vb t_vb=

"
" Customizations
"

" change leader
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

" sudo save
cmap w!! w !sudo tee % > /dev/null

" remember last cursor position
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" cursor column (highlight CursorColumn)
autocmd insertLeave * set nocursorcolumn
autocmd insertEnter * set cursorcolumn

" tab navigation
noremap <silent> <c-right> :tabnext<cr>
noremap <silent> <c-left> :tabprevious<cr>

" window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" nohl shortcut
nmap <silent> ,/ :nohl<CR>

" Nice window title
if has('title') && (has('gui_running') || &title)
    set titlestring=
    set titlestring+=%f\                                              " file name
    set titlestring+=%h%m%r%w                                         " flags
    set titlestring+=\ -\ %{v:progname}                               " program name
    set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')}  " working directory
endif

" 8 colors: torte desert delek koehler peachpuff zellner
" 256 colors: darkburn desert256 inkpot zenburn graywh
if &t_Co >= 256
  colorscheme inkpot
else
  colorscheme graywh
endif

" column dark grey
highlight ColorColumn ctermbg=8


" gui-only stuff
if has('gui_running')
  " remove menu & toolbar from gui
  set guioptions-=mT
  " better font
  set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
  " this colorscheme looks good on gui
  colorscheme inkpot
  " better color column
  highlight ColorColumn guibg=grey20
endif


" strip tailing whitespaces in all lines
function! StripTrailingWhitespace()
  normal mZ
  %s/\s\+$//e
  if line("'Z") != line(".")
    echo "Stripped whitespace\n"
  endif
  normal `Z
endfunction

noremap <silent> <f2> :call StripTrailingWhitespace()<cr>

" notification on DOS-style line endings
autocmd BufReadPost * nested
  \ if !exists('b:reload_dos') && !&binary && &ff=='unix' && (0 < search('\r$', 'nc', 0, 100)) |
  \   let b:reload_dos = 1 |
  \   redir => s:num_dos_ends |
  \   silent %s#\r$##n |
  \   redir END |
  \   e ++ff=dos |
  \   echomsg "File has ".
  \     substitute(s:num_dos_ends, '^\_.\{-}\(\d\+\).*', '\1', '').
  \     " DOS-style line endings out of ".line('$')." lines." |
  \ endif
autocmd BufReadPost * if exists('b:reload_dos') | unlet b:reload_dos | endif

" highlight >80 chars columns
nnoremap <Leader>H :call<SID>LongLineHLToggle()<cr>
hi OverLength ctermbg=none cterm=none
match OverLength /\%>80v/
fun! s:LongLineHLToggle()
 if !exists('w:longlinehl')
  let w:longlinehl = matchadd('ErrorMsg', '.\%>80v', 0)
  echo "Long lines highlighted"
 else
  call matchdelete(w:longlinehl)
  unl w:longlinehl
  echo "Long lines unhighlighted"
 endif
endfunction


"
" Plugins settings
"

" Taglist
let g:Tlist_Process_File_Always = 1
let g:Tlist_Exit_OnlyWindow = 1
let g:Tlist_Auto_Highlight_Tag = 1

noremap <f4> :TlistToggle<cr><c-w>h
noremap <silent><a-right> <c-]>
noremap <silent><a-left> <c-T>


" supertab
let g:SuperTabCompletionType = 'context'
let g:complType = "\<C-n>"


" tex-setup
let g:tex_flavor='latex'

