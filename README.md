# skynet guide

[skynet开发手册](http://www.openbsd.cafe/dev.html)相关代码


## Usage

保证skynet和skynet-guide在平级目录。skynet-guide中的脚本，会自动从skynet目录复制对应的文件。

```
$ git clone https://github.com/cloudwu/skynet
$ git clone https://github.com/kasicass/skynet-guide
```


## 01-hello

将skynet自带的example复制出来，只复制必须的文件，方便查看。

```
$ cd skynet-guide/01-hello
$ ./bootstrap.sh
$ ./skynet example/config
```

