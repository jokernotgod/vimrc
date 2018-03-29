#!/bin/sh

echo "安装将花费一定时间，请耐心等待直到安装完成^_^"

mv -f ~/.vim ~/.vim_old
git clone https://github.com/killmymates/vimrc ~/.vim
echo 'source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/plugins.vim
source ~/.vim/vimrcs/plugins_config.vim
source ~/.vim/vimrcs/extended.vim' > ~/.vimrc

echo "正在努力为您安装bundle程序"
echo "安装完毕将自动退出"
echo "请耐心等待"
vim +BundleInstall +qall

cd ~/.vim/bundle/YouCompleteMe && ./install.py

echo "Installed the Vim configuration successfully, Enjoy it ! :-)"
