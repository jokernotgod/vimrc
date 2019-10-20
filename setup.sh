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

CompletelyInstallVim(){
    git clone https://github.com/formateddd/vimrc ~/.vim

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    cp ~/.vim/config/vimrc ~/.vimrc

    vim +PlugInstall +qall
    echo "vim plugins install success"

    # default python virtualenv
    pip install yapf autopep8
    echo "Installed the Vim configuration successfully, Enjoy it ! :-)"
}

SimpleInstallVim(){
    wget -O ~/.vimrc https://raw.githubusercontent.com/formateddd/vimrc/master/vimrcs/simple_vimrc
}

InstallNvim(){
    echo "installing..."
    if which apt-get >/dev/null; then
        sudo apt-get install -y neovim git cmake python3-dev libncurses5-dev build-essential curl
    elif which brew >/dev/null;then
        brew install neovim git cmake
    else
        echo "CentOS or other system will install without plugins"
    fi
    # windows cmake
    # https://cmake.org/download/
}

JudgeNvimPath(){
    if [ ! -d "~/.config/nvim" ]; then
        mv -f ~/.config/nvim ~/.config/nvim_old
    fi
}


CompletelyInstallNvim(){
    git clone https://github.com/formateddd/vimrc ~/.config/nvim

    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    cp ~/.config/nvim/config/nvimrc ~/.config/nvim/init.vim

    nvim +PlugInstall +qall
    echo "vim plugins install success"

    # default python virtualenv
    pip install yapf autopep8
    echo "Installed the Vim configuration successfully, Enjoy it ! :-)"
}

SimpleInstallNvim(){
    curl -fLo ~/.config/nvim/init.vim --create-dirs \
        https://raw.githubusercontent.com/formateddd/vimrc/master/vimrcs/simple_vimrc
}


if [ $1 = 0 ]
then
    echo "simple installing vim..."
    JudgeVimPath
    SimpleInstallVim
elif [ $1 = 1 ]
then
    echo "completely installing vim..."
    InstallVim
    JudgeVimPath
    CompletelyInstallVim
elif [ $1 = 2 ]
then
    echo "simple installing nvim..."
    JudgeNvimPath
    SimpleInstallNvim
elif [ $1 = 3 ]
then
    echo "completely installing nvim..."
    InstallNvim
    JudgeNvimPath
    CompletelyInstallNvim
else
    echo "param error"
fi

