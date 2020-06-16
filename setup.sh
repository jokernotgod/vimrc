#!/bin/sh

InstallVim(){
    echo "installing..."
    if which apt-get >/dev/null; then
        sudo apt-get install -y vim git python3-dev curl nodejs npm
    elif which brew >/dev/null;then
        brew install vim git nodejs npm
    else
        echo "CentOS or other system will install without plugins"
    fi
    # windows cmake
    # https://cmake.org/download/
}

JudgeVimPath(){
    if [ ! -d "~/.vim" ]; then
        filename=`date '+%Y%m%d'`
        echo $filename
        mv -f ~/.vim ~/.vim_old$filename
    fi
}

CompletelyInstallVim(){
    git clone https://github.com/formateddd/vimrc ~/.vim

    cp ~/.vim/config/vimrc ~/.vimrc
    #cp ~/.vim/config/flake8 ~/.flake8

    vim +PlugInstall +qall
    echo "vim plugins install success"

    # default python virtualenv
    pip install pyvim yapf
    echo "Installed the Vim configuration successfully, Enjoy it ! :-)"
}

SimpleInstallVim(){
    curl -fLo ~/.vimrc https://raw.githubusercontent.com/formateddd/vimrc/master/config/simple_vimrc
}

InstallNvim(){
    echo "installing..."
    if which apt-get >/dev/null; then
        sudo apt-get install -y neovim git curl nodejs npm
    elif which brew >/dev/null;then
        brew install neovim git cmake nodejs npm
    else
        echo "CentOS or other system will install without plugins"
    fi
    # windows cmake
    # https://cmake.org/download/
}

JudgeNvimPath(){
    if [ ! -d "~/.config/nvim" ]; then
        filename=`date '+%Y%m%d'`
        echo $filename
        mv -f ~/.config/nvim ~/.config/nvim_old$filename
    fi
}


CompletelyInstallNvim(){
    git clone https://github.com/formateddd/vimrc ~/.config/nvim

    cp ~/.config/nvim/config/nvimrc ~/.config/nvim/init.vim
    mkdir -p ~/.local/share/nvim/site/autoload
    cp -r ~/.config/nvim/autoload ~/.local/share/nvim/site/
    #cp ~/.vim/config/flake8 ~/.flake8

    nvim +PlugInstall +qall
    echo "vim plugins install success"

    # default python virtualenv
    pip install neovim pynvim yapf
    echo "Installed the Vim configuration successfully, Enjoy it ! :-)"
}

SimpleInstallNvim(){
    curl -fLo ~/.config/nvim/init.vim --create-dirs \
        https://raw.githubusercontent.com/formateddd/vimrc/master/config/simple_vimrc
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
    InstallNvim
    SimpleInstallNvim
elif [ $1 = 3 ]
then
    echo "completely installing nvim..."
    JudgeNvimPath
    InstallNvim
    CompletelyInstallNvim
else
    echo "param error"
fi

