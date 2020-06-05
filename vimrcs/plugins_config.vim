
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let b:ale_linters = ['flake8', 'pylint']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => preservim/nerdcommenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => kite
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:kite_supported_languages = ['python', 'go']
let g:kite_tab_complete=1
set completeopt-=preview   " show documents
autocmd CompleteDone * if !pumvisible() | pclose | endif
set completeopt+=menuone   " show the popup menu even when there is only 1 match
set completeopt+=noinsert  " don't insert any text until user chooses a match
set completeopt-=longest   " don't insert the longest common text


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Youcompleteme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置跳转到方法/函数定义的快捷键
nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 触发补全快捷键
" let g:ycm_key_list_select_completion = ['<TAB>', '<c-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<S-TAB>', '<c-p>', '<Up>']
let g:ycm_key_list_select_completion = ['<c-n>']
let g:ycm_key_list_previous_completion = ['<c-p>']
let g:ycm_auto_trigger = 2
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
" => fatih/vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:go_version_warning = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => indentLine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 支持任意ASCII码，也可以使用特殊字符：¦, ┆, or │ ，但只在utf-8编码下有效
" let g:indentLine_char='�'
"let g:indentLine_char_list = ['┆']
"" 使indentline生效
"let g:indentLine_enabled = 1
"let g:indentLine_setColors = 0
"" Vim
"let g:indentLine_color_term = 239
"autocmd Filetype json let g:indentLine_enabled = 0
