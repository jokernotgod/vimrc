call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
" 补全括号
Plug 'Raimondi/delimitMate'
Plug 'rhysd/vim-fixjson'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'Valloric/YouCompleteMe', { 'do': 'git submodule update --init --recursive && ./install.sh' }

"Plug 'davidhalter/jedi-vim'
"Plug 'klen/python-mode'
"Plug 'kevinw/pyflakes-vim'
"Plug 'scrooloose/syntastic'
"Plug 'suan/vim-instant-markdown'
"Plug 'pangloss/vim-javascript'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

call plug#end()

