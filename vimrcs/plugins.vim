call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline' " 补全括号
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'kevinw/pyflakes-vim'
Plug 'Chiel92/vim-autoformat'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
"" Plug 'Valloric/YouCompleteMe', { 'do': 'git submodule update --init --recursive && python install.py' }
"" Plug 'zxqfl/tabnine-vim'

Plug 'Yggdroot/indentLine' "displaying thin vertical lines
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'sheerun/vim-polyglot' "A solid language pack for Vim.

"Plug 'vim-syntastic/syntastic'
"Plug 'davidhalter/jedi-vim'
"Plug 'scrooloose/syntastic'
"Plug 'suan/vim-instant-markdown'
"Plug 'pangloss/vim-javascript'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'tpope/vim-surround
"Plug 'sbdchd/neoformat'
"Plug 'mattn/emmet-vim'
"html
"Plug 'scrooloose/nerdcommenter' 注释


call plug#end()

