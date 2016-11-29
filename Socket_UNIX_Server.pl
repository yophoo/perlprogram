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
unlink "$name" || warn "$name: $!\n";   # ɾ���Ѿ����ڵ� $name �ļ�
bind(SERVERSOCKET, sockaddr_un($name)) || die "Bind $!\n"; # �������󶨵�ַ
print "Bind OK\n";
listen(SERVERSOCKET,5) || die "Listen $!\n";  # ���� 5 ���ͻ�������
print "Listen OK\n";
while(1) {
	accept(NEWSOCKET,SERVERSOCKET) || die "Accept $!\n"; # ���ܿͻ��˽���
	defined($pid = fork) || die "Fork: $!\n";  # fork һ���ӽ���
	if ($pid == 0) {      # �ӽ���ִ�д���
		print(NEWSOCKET "Greetings from your server !!\n");  # ��ͻ����������
		close(NEWSOCKET);    # �ر� Socket
		exit 0;     # �˳��ӽ���
	}
	else {      # ������ִ�д���
		close(NEWSOCKET);    # �ر� Socket
	}
}