"以下是改键

" With a map leader it's possible to do extra key combinations
let mapleader="\<Space>"
let g:mapleader="\<Space>" 
"let mapleader = ";"
"let g:mapleader = ";"

nmap <Leader>y :!ici <C-R><C-W><CR>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
noremap H ^
noremap L $

" 调整缩进后自动选中，方便再次操作
vnoremap < <gv
vnoremap > >gv

"新建.py,.sh文件，自动插入文件头
autocmd BufNewFile *.sh,*.py exec ":call SetTitle()"
func! SetTitle()
    if &filetype == 'sh'
        call setline(1,"\#!/bin/bash")
        call append(line("."), "")
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python3")
        "call append(line("."),"# coding=utf-8")
        call append(line(".")+1, "")
        call append(line(".")+8, "")
    endif
    "新建文件后，自动定位到文件末尾
endfunc
autocmd BufNewFile * normal G


"map <F1> :PymodeLintAuto<CR>
map <F1> :call FormartSrc()<CR><CR>

"定义FormartSrc()
func! FormartSrc()
    exec "w"
    if executable('autopep8')
        echo "autopep8 exists, formating..."
    else
        echo "installing autopep8, wait a moment..."
        exec 'r !pip install autopep8'
    endif
    if &filetype == 'py'||&filetype == 'python'
        exec 'r !autopep8 -i --aggressive --ignore=E501 %'
        "exec 'r !autopep8 -i %'
        "change 79 to 120
        "exec 'r !yapf --style ~/.yapf/style.cfg -i %'
        "exec 'r !yapf -i %'
    else
        exec "normal gg=G"
        return
    endif
    exec "e! %"
endfunc
"结束定义FormartSrc


"列出当前目录文件  
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>

nmap <F4> :TagbarToggle<CR>

"run python file
map <F5> :call RunPyFile()<CR>
func! RunPyFile()
    exec "w"
    if &filetype == 'python'
        exec "!time ~/.virtualenv/py3/bin/python %"
    else
        echo &filetype
    endif
endfunc


map <F7> : bp<CR>
map <F8> : source ~/.vimrc<CR>
map <F9> : bn<CR>

set pastetoggle=<F10>

"为方便复制，用<F2>开启/关闭行号显示:
" nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
 
nnoremap <F11> :call Setnonumber() <CR>
func! Setnonumber()
    exec "set norelativenumber"
    exec "set nonumber"
endfunc
nnoremap <F12> :set relativenumber <CR>

if has("autocmd")
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif
endif

