#!/bin/sh

JudgeVimPath(){
    if [ ! -d "~/.vim" ]; then
        filename=`date '+%Y%m%d'`
        echo $filename
        mv -f ~/.vim ~/.vim_old$filename
    fi
}

ConfigVim(){
    git clone https://github.com/formateddd/vimrc ~/.vim

    cp ~/.vim/config/vimrc ~/.vimrc
    #cp ~/.vim/config/flake8 ~/.flake8

    vim +PlugInstall +qall
    echo "vim plugins install success"

    # default python virtualenv
    pip install pyvim yapf
    echo "Installed the Vim configuration successfully, Enjoy it ! :-)"
}

JudgeNvimPath(){
    if [ ! -d "~/.config/nvim" ]; then
        filename=`date '+%Y%m%d'`
        echo $filename
        mv -f ~/.config/nvim ~/.config/nvim_old$filename
    fi
}

ConfigNvim(){
    git clone https://github.com/formateddd/vimrc ~/.config/nvim

    cp ~/.config/nvim/config/nvimrc ~/.config/nvim/init.vim
    mkdir -p ~/.local/share/nvim/site/autoload
    cp -r ~/.config/nvim/autoload ~/.local/share/nvim/site/

    nvim +PlugInstall +qall
    echo "vim plugins install success"

    # default python virtualenv
    pip install neovim pynvim yapf
    echo "Installed the Vim configuration successfully, Enjoy it ! :-)"
}


if [ $1 = 'vim' ]
then
    echo "config vim..."
    JudgeVimPath
    ConfigVim
elif [ $1 = 'nvim' ]
then
    echo "config nvim..."
    JudgeNvimPath
    ConfigNvim
else
    echo "param error, should be 'vim' or 'nvim'", $1
fi
