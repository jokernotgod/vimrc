#!/bin/sh

echo "installing..."

if which apt-get >/dev/null; then
	sudo apt-get install -y vim git cmake python3-dev libncurses5-dev build-essential 
##Add HomeBrew support on  Mac OS
elif which brew >/dev/null;then
    echo "You are using HomeBrew tool, I don't konw if it can work well"
    brew install vim git cmake
fi

mv -f ~/.vim ~/.vim_old
git clone https://github.com/killmymates/vimrc ~/.vim

echo 'source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/plugins.vim
source ~/.vim/vimrcs/plugins_config.vim
source ~/.vim/vimrcs/extended.vim' > ~/.vimrc

vim +PlugInstall +qall

echo "Installed the Vim configuration successfully, Enjoy it ! :-)"
