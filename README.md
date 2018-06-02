# vimrc
vimrc config

```sh
wget -qO- https://raw.githubusercontent.com/killmymates/vimrc/master/setup.sh | sh -x
```
##### 有时候ycm会在安装时报错
```sh
cd ~/.vim/plugged/YouCompleteMe
git submodule update --init --recursive
./install.py
```
最近在不同机器上安装ycm，发现bug还是很多的，并不能简单设配不同系统，如果没有时间和精力，py补全可以只用Jedi，在vimrc/plugins.vim中注释掉就好

## about vim support python3

```sh
sudo apt install vim-gtk
```
or
```sh
sudo apt install cmake python3-dev libncurses5-dev
git clone https://github.com/vim/vim

cd vim/src 
./configure --with-features=huge --enable-python3interp --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/ --enable-rubyinterp --enable-luainterp --enable-perlinterp --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu/ --enable-multibyte --enable-cscope --prefix=/usr/local/vim8/
make
sudo make install
```

reference from [ma6174](https://github.com/ma6174/vim-deprecated) and [YouCompleteMe](https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source)
