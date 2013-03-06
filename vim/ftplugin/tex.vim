let g:tex_flavor='latex'
set textwidth=79
set grepprg=grep\ -nH\ $*
set iskeyword+=:
set iskeyword+="\\'"

imap <C-S-J> <Plug>IMAP_JumpForward
nmap <C-S-J> <Plug>IMAP_JumpForward
vmap <C-S-J> <Plug>IMAP_JumpForward

