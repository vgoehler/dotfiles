set nocompatible              " be iMproved, required
filetype off                  " required

" for fish compatibility
set shell=/bin/bash

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'othree/xml.vim'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

Plugin 'vim-latex/vim-latex'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set history=500

let mapleader = '\'
let g:mapleader = '\'
" fast save
nmap <leader>w :w!<cr>

" highlight search results
set hlsearch

" dont redraw while executing macros
set lazyredraw

" show matching brackets
set showmatch

" blink count
set mat=2

" no bells on error
set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable
hi LineNr cterm=bold ctermbg=236
set nu
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" swap backup etc. to dedicated folder
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

" indents
set ai
set si

" vim notes
:let g:notes_directories = ['~/Documents/Notes', '~/CloudStorage/Mega/SharedNotes']
:let g:notes_suffix = '.txt'
:let g:notes_title_sync = 'yes'
:let g:notes_markdown_program = 'pandoc'
map <F3> :ShowTaggedNotes<CR>
map <F4> :RecentNotes<CR>

set encoding=utf8

" NERD Tree
map <F6> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" misc
" FIXME enable python support in vim
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
set t_Co=256
colorscheme delek

" show mode change
set laststatus=2

" visible cursorline
hi CursorLine ctermbg=236 term=bold cterm=None
" change to it on insert mode
autocmd InsertEnter,InsertLeave * set cul!
" change cursorshape
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" optional reset cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

"insert date
nnoremap <leader><F5> "=strftime("[%a, %d. %b %Y]")<CR>P
inoremap <leader><F5> <C-R>=strftime("[%a, %d. %b %Y]")<CR>

" folding for xml's
augroup XML
    au!
    au FileType xml setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
augroup END

" YAML files have other indents
augroup YAML
    au!
    au FileType yaml setlocal tabstop=2
    au FileType yaml setlocal shiftwidth=2
augroup END

" latex
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
augroup LATEX
    au!
    au FileType tex set sw=2
    au FileType tex set iskeyword+=:
    au FileType tex setlocal spell
    "call IMAP('FRA', "\\begin{frame}{<+HEADING+>}\<CR><++>\\end{frame}<++>", 'tex')
    "use F9 for completion list in ref, cite etc.
augroup END

" spell checking
set spelllang=en_us
set complete+=kspell

" git commits
autocmd FileType gitcommit setlocal spell
