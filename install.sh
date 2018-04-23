#!/bin/sh

echo "installing..."

cp -r ~/.vim ~/.vim_old
git clone https://github.com/killmymates/vimrc ~/.vim

echo 'source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/plugins.vim
source ~/.vim/vimrcs/plugins_config.vim
source ~/.vim/vimrcs/extended.vim' > ~/.vimrc

vim +PlugInstall +qall

echo "Installed the Vim configuration successfully, Enjoy it ! :-)"
