call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'dense-analysis/ale'
Plug 'Chiel92/vim-autoformat'
Plug 'preservim/nerdcommenter' " 注释
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }


" Plug 'Valloric/YouCompleteMe', { 'do': 'git submodule update --init --recursive && python install.py' }
" Plug 'zxqfl/tabnine-vim'
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Plug 'davidhalter/jedi-vim'
" Plug 'suan/vim-instant-markdown'
" Plug 'pangloss/vim-javascript'
" Plug 'tpope/vim-surround
" Plug 'sbdchd/neoformat'
" Plug 'mattn/emmet-vim' " html
" Plug 'Yggdroot/indentLine' " displaying thin vertical lines
" Plug 'majutsushi/tagbar'

call plug#end()
