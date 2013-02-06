" Stuff not set in python-mode plugin

" - c do insert comment leader when wrapping based on textwidth
" - o do not insert comment leader when using 'o' or 'O'
" - r do not insert comment leader when hitting <Enter>
set formatoptions+=c formatoptions-=o formatoptions-=r

highlight BadWhitespace term=standout ctermbg=red guibg=red
match BadWhitespace /^\t\+/
match BadWhitespace /\s\+$/

" python-mode settings
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
