#!/usr/bin/perl -w
# unix_socket_server.pl
use Socket;
print "Server Started.\n";
$AF_UNIX = 1;
$SOCK_STREAM = 1;
$PROTOCOL = 0;
socket(SERVERSOCKET, $AF_UNIX, $SOCK_STREAM, $PROTOCOL) || die "Socket $!\n";
print "Socket OK\n";
$name = "./.mysock";
unlink "$name" || warn "$name: $!\n";   # 删除已经存在的 $name 文件
bind(SERVERSOCKET, sockaddr_un($name)) || die "Bind $!\n"; # 服务器绑定地址
print "Bind OK\n";
listen(SERVERSOCKET,5) || die "Listen $!\n";  # 接收 5 个客户端请求
print "Listen OK\n";
while(1) {
	accept(NEWSOCKET,SERVERSOCKET) || die "Accept $!\n"; # 接受客户端接入
	defined($pid = fork) || die "Fork: $!\n";  # fork 一个子进程
	if ($pid == 0) {      # 子进程执行代码
		print(NEWSOCKET "Greetings from your server !!\n");  # 向客户端输出内容
		close(NEWSOCKET);    # 关闭 Socket
		exit 0;     # 退出子进程
	}
	else {      # 父进程执行代码
		close(NEWSOCKET);    # 关闭 Socket
	}
}