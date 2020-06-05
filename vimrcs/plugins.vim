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


" Plug 'Valloric/YouCompleteMe', { 'do': 'git submodule update --init --recursive && python install.py' }
" Plug 'suan/vim-instant-markdown'
" Plug 'pangloss/vim-javascript'
" Plug 'tpope/vim-surround'
" Plug 'mattn/emmet-vim' " html
" Plug 'Yggdroot/indentLine' " displaying thin vertical lines

call plug#end()
