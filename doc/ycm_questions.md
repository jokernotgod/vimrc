## 转了一圈，发现还是ycm好用，记录一下安装时候遇到的各种错误

#### c++: internal compiler error: Killed (program cc1plus)
- 内存不足，开启虚拟内存 
```sh
dd if=/dev/zero of=/var/swap.img bs=1024k count=1000
mkswap /var/swap.img
swapon /var/swap.img
```
- [reference](https://github.com/Valloric/ycmd/issues/224 "reference")
