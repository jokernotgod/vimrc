call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/syntastic'
Plug 'Chiel92/vim-autoformat'
Plug 'Yggdroot/indentLine' " displaying thin vertical lines
Plug 'formateddd/nerdcommenter' " 注释

if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Valloric/YouCompleteMe', { 'do': 'git submodule update --init --recursive && python install.py' }
endif

"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'zxqfl/tabnine-vim'
"Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
"Plug 'davidhalter/jedi-vim'
"Plug 'suan/vim-instant-markdown'
"Plug 'pangloss/vim-javascript'
"Plug 'tpope/vim-surround
"Plug 'sbdchd/neoformat'
"Plug 'mattn/emmet-vim' " html

call plug#end()
