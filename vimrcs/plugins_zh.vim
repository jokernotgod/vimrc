filetype plugin indent on

" vundle 环境设置
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'https://gitee.com/VundleVim/Vundle.vim'
Plugin 'https://gitee.com/bling/vim-airline'
" 补全括号
Plugin 'https://gitee.com/Raimondi/delimitMate'
Plugin 'https://gitee.com/rhysd/vim-fixjson'
Plugin 'https://gitee.com/airblade/vim-gitgutter'
Plugin 'https://gitee.com/scrooloose/nerdtree'
Plugin 'https://gitee.com/majutsushi/tagbar'
Plugin 'https://gitee.com/kevinw/pyflakes-vim'
Plugin 'https://gitee.com/Valloric/YouCompleteMe'

"Plugin 'klen/python-mode'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'scrooloose/syntastic'
"Plugin 'suan/vim-instant-markdown'
"Plugin 'pangloss/vim-javascript'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'

call vundle#end()
