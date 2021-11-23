" latex
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
set iskeyword+=:
setlocal spell
call IMAP('EFR', "\<CR>\\begin{frame}{<+HEADING+>}\<CR><++>\<CR>\\end{frame}<++>\<CR>", 'tex')
call IMAP('EBL', "\<CR>\\begin{block}{<+HEADING+>}\<CR><++>\<CR>\\end{block}<++>\<CR>", 'tex')
call IMAP('EEX', "\<CR>\\begin{exampleblock}{<+HEADING+>}\<CR><++>\<CR>\\end{exampleblock}<++>\<CR>", 'tex')
