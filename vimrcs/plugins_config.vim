"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=30
let g:NERDTreeDirArrows = 1
"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
"" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <leader>nn :NERDTreeToggle<CR>
map <leader>nb  :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_width=35
let g:tagbar_autofocus=1
let g:tagbar_right= 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Youcompleteme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置跳转到方法/函数定义的快捷键
nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 触发补全快捷键
let g:ycm_key_list_select_completion = ['<TAB>', '<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<c-p>', '<Up>']
let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 2   " 最小自动触发补全的字符大小设置为 2
set completeopt-=preview    " YCM的previw窗口比较恼人，还是关闭比较好
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0     "注释和字符串中的文字也会被收入补全
let g:ycm_filetype_blacklist = {
            \ 'tagbar' : 1,
            \ 'nerdtree' : 1,
            \}   " 设置在下面几种格式的文件上屏蔽ycm

let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:gitgutter_enabled=0
" nnoremap <silent> <leader>d :GitGutterToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => python-mode
" https://github.com/python-mode/python-mode/blob/develop/doc/pymode.txt
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"取消代码折叠
"let g:pymode_options_colorcolumn = 1
"开启补全，并设置<C-Tab>为默认快捷键
"let g:pymode_rope_completion = 1
"let g:pymode_rope_complete_on_dot = 1
"let g:pymode_rope_completion_bind = '<TAB>'
"
"let g:pymode_folding = 0
"let g:pymode_options_max_line_length = 119
"let g:pymode_lint_options_pep8 = {'max_line_length': g:pymode_options_max_line_length}
""修改后保存时进行检查
"let g:pymode_lint_on_write = 0
""不在父目录下查找.ropeproject，能提升响应速度
"let g:pymode_rope = 0
"let g:pymode_rope_lookup_project = 0
""项目修改后重新生成缓存
"let g:pymode_rope_regenerate_on_write = 1
""Skip errors and warnings                                 *'g:pymode_lint_ignore'*
""E.g. ["W", "E2"] (Skip all Warnings and the Errors starting with E2) etc.
"let g:pymode_lint_ignore = ["E501"]
"
"let g:pymode_doc = 0
"let g:pymode_options_colorcolumn = 0
"let g:pymode_python = 'python3'
"let g:pymode_warnings = 1
"let g:pymode_quickfix_minheight = 3
"let g:pymode_quickfix_maxheight = 6

let g:go_version_warning = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => indentLine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 支持任意ASCII码，也可以使用特殊字符：¦, ┆, or │ ，但只在utf-8编码下有效
" let g:indentLine_char='�'
let g:indentLine_char_list = ['�']

" 使indentline生效
let g:indentLine_enabled = 1

let g:indentLine_setColors = 0
" Vim
let g:indentLine_color_term = 239
