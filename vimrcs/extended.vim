"以下是改键

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader="\<Space>"
let g:mapleader ="\<Space>" 
" let mapleader = ","
" let g:mapleader = ","

nmap <Leader>y :!ici <C-R><C-W><CR>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
noremap H ^
noremap L $

"新建.py,.sh文件，自动插入文件头
autocmd BufNewFile *.sh,*.py exec ":call SetTitle()"
func! SetTitle()
    if &filetype == 'sh'
        call setline(1,"\#!/bin/bash")
        call append(line("."), "")
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
        call append(line(".")+1, "")
        call append(line(".")+8, "")
    endif
    "新建文件后，自动定位到文件末尾
endfunc
autocmd BufNewFile * normal G

"为方便复制，用<F2>开启/关闭行号显示:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>


" Tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
let g:tagbar_left = 1
nmap <F4> :TagbarToggle<CR>

map <F6> :call FormartSrc()<CR><CR>

"定义FormartSrc()
func! FormartSrc()
    exec "w"
    if &filetype == 'py'||&filetype == 'python'
        "exec "r !autopep8 -i --aggressive --ignore=E501 %"
        "change 79 to 120
        exec "r !yapf --style ~/.yapf/style.cfg -i %"
    else
        exec "normal gg=G"
        return
    endif
    exec "e! %"
endfunc
"结束定义FormartSrc

set pastetoggle=<F9>

if has("autocmd")
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif
endif

