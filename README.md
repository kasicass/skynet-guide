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

## 02-chatroom

a sproto-based chat room

```
$ cd skynet-guide/02-chatroom
$ ./tools/bootstrap.sh

# start server
$ ./skynet conf/game.conf

# start client
$ ./lua script/client.lua
```

chat room

```
> login <name>

> list                 # show rooms
* room1
* room2

> join room1
> where
@in [room1]

> say Hello~
@name: Hello~

> leave                # leave room

> where                # in which room?
@in [none]

> create <room-name>   # create room
```

