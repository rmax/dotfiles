" enable color column if textwidth is set
function! EnableColorColumn()
  if (&tw > 0)
    exec ':set colorcolumn='.(&tw+1)
  endif
endfunction

autocmd BufEnter * :call EnableColorColumn()
