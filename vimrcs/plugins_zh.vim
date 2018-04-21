filetype plugin indent on

" vundle 环境设置
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'https://gitee.com/grusaber/Vundle.vim'
Plugin 'https://gitee.com/grusaber/vim-airline'
" 补全括号
Plugin 'https://gitee.com/grusaber/delimitMate'
Plugin 'https://gitee.com/grusaber/vim-fixjson'
Plugin 'https://gitee.com/grusaber/vim-gitgutter'
Plugin 'https://gitee.com/grusaber/nerdtree'
Plugin 'https://gitee.com/grusaber/tagbar'
Plugin 'https://gitee.com/grusaber/pyflakes-vim'
Plugin 'https://gitee.com/grusaber/YouCompleteMe'

"Plugin 'klen/python-mode'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'scrooloose/syntastic'
"Plugin 'suan/vim-instant-markdown'
"Plugin 'pangloss/vim-javascript'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'

call vundle#end()
