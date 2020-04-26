"以下是改键

autocmd BufWritePre *.py execute ':Black'
"nnoremap <F1> :Black<CR>

map <F1> :call FormartSrc()<CR><CR>

map <F2> :call RunFile()<CR>

map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>

"nmap <F4> :TagbarToggle<CR>

map <F5> :call RepalcePrint() <CR>

map <F7> : bp<CR>
map <F9> : bn<CR>

set pastetoggle=<F10>


" 复制当前选中到系统剪切板
"vmap <leader>yy "+y

" 将系统剪切板内容粘贴到vim
"nnoremap <leader>pp "+p

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
command X x

inoremap jj <ESC>

" 调整缩进后自动选中，方便再次操作
vnoremap < <gv
vnoremap > >gv


func! FormartSrc()
    exec "w"
    if &filetype == 'py'||&filetype == 'python'
        "exec 'r !autopep8 -i --aggressive --ignore=E501 %'
        " 废弃autopep8 执行peewee的查询语句时会把 `== None` 改成 `is None`, peewee报错
        "exec 'r !autopep8 -i --max-line-length 80 %'
        "change 79 to 120
        if executable('black')
            echo "black exists, formating..."
        else
            echo "installing black, wait a moment..."
            exec 'r !pip install black'
        endif
        exec 'r !black  %'
    else
        return
    endif
    echo &filetype
endfunc

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

command! JsonFormat :execute '%!python2.7 -m json.tool'
            \ | :execute '%!python2.7 -c "import re,sys;sys.stdout.write(re.sub(r\"\\\u[0-9a-f]{4}\", lambda m:m.group().decode(\"unicode_escape\").encode(\"utf-8\"), sys.stdin.read()))"'


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

