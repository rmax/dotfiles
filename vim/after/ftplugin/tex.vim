set ts=2 et sw=2 tw=66

let g:Tex_Com_dfrac = "\\dfrac{}{<++>}<++>"

call IMAP('==', '&=', 'tex')
call IMAP(g:Tex_Leader.'/', '\dfrac {<++>} {<++>}<++>', 'tex')

