call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'Chiel92/vim-autoformat'
Plug 'preservim/nerdcommenter' " 注释

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'jiangmiao/auto-pairs'
" Plug 'airblade/vim-gitgutter'
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'
"
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
"
" Plug 'Shougo/deoplete.nvim'
" Plug 'lighttiger2505/deoplete-vim-lsp'

" Plug 'Valloric/YouCompleteMe', { 'do': 'git submodule update --init --recursive && python install.py' }
" Plug 'dense-analysis/ale'
" Plug 'suan/vim-instant-markdown'
" Plug 'pangloss/vim-javascript'
" Plug 'tpope/vim-surround'
" Plug 'mattn/emmet-vim' " html
" Plug 'Yggdroot/indentLine' " displaying thin vertical lines

call plug#end()
