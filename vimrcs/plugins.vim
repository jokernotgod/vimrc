filetype plugin indent on

" vundle 环境设置
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
" 补全括号
Plugin 'Raimondi/delimitMate'
Plugin 'rhysd/vim-fixjson'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'kevinw/pyflakes-vim'
Plugin 'Valloric/YouCompleteMe'

Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'scrooloose/syntastic'
"Plugin 'suan/vim-instant-markdown'
"Plugin 'pangloss/vim-javascript'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'

call vundle#end()
