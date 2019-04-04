#!/bin/sh

InstallVim(){
    echo "installing..."
    if which apt-get >/dev/null; then
        sudo apt-get install -y vim git cmake python3-dev libncurses5-dev build-essential curl
    elif which brew >/dev/null;then
        brew install vim git cmake
    else
        echo "CentOS or other system will install without plugins"
    fi
    # windows cmake
    # https://cmake.org/download/
}

JudgeVimPath(){
    if [ ! -d "~/.vim" ]; then
        mv -f ~/.vim ~/.vim_old
    fi
}

CompletelyInstall(){
    git clone https://github.com/formateddd/vimrc ~/.vim

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    echo 'source ~/.vim/vimrcs/basic.vim
    source ~/.vim/vimrcs/plugins.vim
    source ~/.vim/vimrcs/plugins_config.vim
    source ~/.vim/vimrcs/extended.vim' > ~/.vimrc

    vim +PlugInstall +qall
    echo "vim plugins install success"

    # default python virtualenv
    pip install yapf autopep8
    echo "Installed the Vim configuration successfully, Enjoy it ! :-)"
}

SimpleInstall(){
    git clone https://github.com/formateddd/vimrc ~/.vim
    echo 'source ~/.vim/vimrcs/basic.vim
    source ~/.vim/vimrcs/extended.vim' > ~/.vimrc
}

if [ $1 = 0 ]
then
    echo "$1"
    echo "simple installing..."
    JudgeVimPath
    SimpleInstall
elif [ $1 = 1 ]
then
    echo "$1"
    echo "completely installing..."
    InstallVim
    JudgeVimPath
    CompletelyInstall
elif [ $1 = 2 ]
then
    echo "hello"
else
    echo "param needs 0 or 1, 0 means simple install and 1 means completely install"
fi

