"sets
set nocompatible
set laststatus=1
set confirm
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set ignorecase
set hlsearch
set noswapfile
set rtp+=~/.vim/bundle/vundle

"switcher
filetype on
colorscheme koehler
syntax on
filetype plugin indent on

"functions callls
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")|execute("normal `\"")|endif
endif

call vundle#rc()

autocmd BufNewFile *.php exec ":call NewPhp()"
func NewPhp()
	call setline(1,"<?php")
	call append(line("."),"/***************************************************************************")
	call append(line(".")+1,"	\# File Name: ".expand("%"))
	call append(line(".")+2,"	\# Author: zhuoliang")
	call append(line(".")+3,"	\# Created Time: ".strftime("%c"))
	call append(line(".")+4,"***************************************************************************/")
	call append(line(".")+5,"")
	call append(line(".")+6,"")
	call append(line(".")+7,"")
	call append(line(".")+8,"")
	call append(line(".")+9,"")
	call append(line(".")+10,"?>")
endfunc

autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
func SetTitle() 
    if &filetype == 'sh' 
        call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: Walker") 
        call append(line(".")+2, "\# mail: zhuoliang1110@163.com") 
        call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "\#!/bin/bash") 
        call append(line(".")+6, "") 
    else 
        call setline(1, "/*************************************************************************") 
        call append(line("."), "    > File Name: ".expand("%")) 
        call append(line(".")+1, "    > Author: Walker") 
        call append(line(".")+2, "    > Mail: zhuoliang1110@163.com ") 
        call append(line(".")+3, "    > Created Time: ".strftime("%c")) 
        call append(line(".")+4, " ************************************************************************/") 
        call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+6, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "")
    endif
endfunc 

"keyboaard commands
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap ' :vsp 
nmap ; :sp 
nmap . :only
nmap , :close

Bundle 'gmarik/vundle'
Bundle 'L9'
Bundle 'taglist.vim'
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'davidhalter/jedi-vim'
"Bundle 'scrooloose/nerdcommenter'
"Bundle 'bling/vim-airline'
Bundle 'Lokaltog/vim-powerline'
Bundle 'cpp.vim'
"Bundle 'rdnetto/YCM-Generator'
"Bundle 'vim-colorscheme-switcher'
Bundle 'scrooloose/nerdtree'
Bundle 'a.vim'
"自动对齐
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
Bundle 'snipMate'
Bundle 'scrooloose/snipmate-snippets'
Bundle 'altercation/vim-colors-solarized'
"快速注释
Bundle 'tpope/vim-commentary'
"补全
Bundle 'AutoComplPop'
Bundle 'vim-clang'
Bundle 'headerguard'
Bundle 'AutoClose'

"taglist
nnoremap <F8> :TlistToggle<CR>

"nerdtree
nmap nd :NERDTree
nmap nc :NERDTreeClose

"vim-powerline
set laststatus=2
set t_Co=256
let g:Powerline_symbols='unicode'
set encoding=utf8

"markdown
"let g:vim_markdown_frontmatter=1
let g:vim_markdown_folding_disabled=1

"vim-colors-solarized
"syntax enable
set background=dark
"colorscheme solarized

"headerguard
nmap <leader>h :HeaderguardAdd<CR>
