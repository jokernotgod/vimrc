python:
    sudo yum -y install https://centos7.iuscommunity.org/ius-release.rpm
    sudo yum -y install python36u python36u-pip python36u-devel

git clone https://github.com/vim/vim.git
./configure --with-features=huge \
            --enable-multibyte \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/lib64/python2.7/config \
            --enable-python3interp=yes \
            --with-python3-config-dir=/lib64/python3.6/config \
            --enable-cscope \
            --prefix=/usr/local/vim8 \
            --with-tlib=ncurses 
make
sudo make install
sudo ln -s /usr/local/vim8/bin/vim /usr/local/bin/vi
