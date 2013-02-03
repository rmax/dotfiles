" Stuff not set in python-mode plugin

" - c do insert comment leader when wrapping based on textwidth
" - o do not insert comment leader when using 'o' or 'O'
" - r do not insert comment leader when hitting <Enter>
set formatoptions+=c formatoptions-=o formatoptions-=r

highlight BadWhitespace term=standout ctermbg=red guibg=red
match BadWhitespace /^\t\+/
match BadWhitespace /\s\+$/

