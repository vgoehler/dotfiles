" latex
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
set iskeyword+=:
setlocal spell
call IMAP('FRA', "\<CR>\\begin{frame}{<+HEADING+>}\<CR><++>\<CR>\\end{frame}<++>\<CR>", 'tex')
call IMAP('BLK', "\<CR>\\begin{block}{<+HEADING+>}\<CR><++>\<CR>\\end{block}<++>\<CR>", 'tex')
call IMAP('EBL', "\<CR>\\begin{exampleblock}{<+HEADING+>}\<CR><++>\<CR>\\end{exampleblock}<++>\<CR>", 'tex')
