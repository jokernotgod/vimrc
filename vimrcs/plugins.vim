call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/syntastic'
Plug 'Chiel92/vim-autoformat'
Plug 'preservim/nerdcommenter' " 注释
Plug 'Valloric/YouCompleteMe', { 'do': 'git submodule update --init --recursive && python install.py' }


if has('nvim')
    Plug 'psf/black'
    "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'psf/black', { 'tag': '19.10b0' }
    "Plug 'Valloric/YouCompleteMe', { 'do': 'git submodule update --init --recursive && python install.py' }
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
"Plug 'Yggdroot/indentLine' " displaying thin vertical lines
"Plug 'majutsushi/tagbar'

call plug#end()
