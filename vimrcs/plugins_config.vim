"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
let g:NERDTreeDirArrows = 1
"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
"" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <leader>nn :NERDTreeToggle<CR>
map <leader>nb  :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>
"列出当前目录文件  
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Youcompleteme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置跳转到方法/函数定义的快捷键
nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 触发补全快捷键
let g:ycm_key_list_select_completion = ['<TAB>', '<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<c-p>', '<Up>']
let g:ycm_auto_trigger = 1
" 最小自动触发补全的字符大小设置为 2
let g:ycm_min_num_of_chars_for_completion = 2
" YCM的previw窗口比较恼人，还是关闭比较好
set completeopt-=preview



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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"取消代码折叠
let g:pymode_folding = 0
"修改后保存时进行检查
let g:pymode_lint_on_write = 0
"不在父目录下查找.ropeproject，能提升响应速度
let g:pymode_rope_lookup_project = 0
"项目修改后重新生成缓存
let g:pymode_rope_regenerate_on_write = 1
let g:pymode_options_max_line_length = 120
