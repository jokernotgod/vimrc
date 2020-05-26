"以下是改键

" autocmd BufWritePre *.py execute 'YAPF'
"command Formatpy :execute 'r !yapf -i %'
"command Run :call RunFile()<cr>

map <S-R> <Esc> :call RunFile()<cr>
map <S-F> :call Formatpy()<CR>
func! Formatpy()
    exec "w"
    exec "r !yapf -i %"
    exec "e"
endfunc


nmap <S-N> :NERDTreeToggle<CR>
nmap <S-N> <ESC> :NERDTreeToggle<CR>

map <F5> :call RepalcePrint() <CR>

set pastetoggle=<F10>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

noremap H 0
noremap L $

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w

inoremap jj <ESC>

" 调整缩进后自动选中，方便再次操作
vnoremap < <gv
vnoremap > >gv


" run python file
func! RunFile()
    exec "w"
    if &filetype == 'python'
        exec "!time python %"
    elseif &filetype == 'go'
        exec "!time go run % "
    elseif &filetype == 'sh'
        exec "!time sh %"
    elseif &filetype == 'javascript'
        exec "!time node %"
    else
        echo &filetype
    endif
endfunc

" python2 
" command! JsonFormat :execute '%!python2.7 -m json.tool'
"             \ | :execute '%!python2.7 -c "import re,sys;sys.stdout.write(re.sub(r\"\\\u[0-9a-f]{4}\", lambda m:m.group().decode(\"unicode_escape\").encode(\"utf-8\"), sys.stdin.read()))"'

command! JsonFormat :execute "%!python3 -c 'import json, sys, collections; print(json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), ensure_ascii=False, indent=4))'"


"正则替换py2中print写法
func! RepalcePrint()
    exec "w"
    try
        :%s/print \(.*\)/print(\1)/g
        echo "replace success !"
    catch /.*/
        echo "Caught error: " . v:exception
    endtry
endfunc

" F12 行号开关，用于鼠标复制代码用
" 为方便复制，用<F12>开启/关闭行号显示:
function! HideNumber()
    if(&relativenumber == &number)
        set relativenumber! number!
    elseif(&number)
        set number!
    else
        set relativenumber!
    endif
    set number?
endfunc
nnoremap <F12> :call HideNumber()<CR>

