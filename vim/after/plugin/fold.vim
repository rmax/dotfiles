" if no foldmethod set use indent
if (!&foldmethod)
  set foldmethod=indent
endif

" change default fold nest limit
if (&foldnestmax == 20)
  set foldnestmax=2
endif
