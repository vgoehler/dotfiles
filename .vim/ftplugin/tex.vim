" latex
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
set iskeyword+=:
setlocal spell
call IMAP('FRA', "\<CR>\\begin{frame}{<+HEADING+>}\<CR><++>\<CR>\\end{frame}<++>\<CR>", 'tex')

