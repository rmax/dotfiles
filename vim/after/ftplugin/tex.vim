" Overrides
let g:Tex_Com_dfrac = "\\dfrac{}{<++>}<++>"
call IMAP('==', '&=', 'tex')
call IMAP(g:Tex_Leader.'/', '\dfrac {<++>} {<++>}<++>', 'tex')

