#!/usr/bin/perl -w
# unix_socket_client.pl
use Socket;
print "Hi I'm the client\n";
$AF_UNIX = 1;
$SOCK_STREAM = 1;
$PROTOCOL = 0;
socket(CLIENTSOCKET, $AF_UNIX, $SOCK_STREAM, $PROTOCOL);
$name = "./.mysock";
do {
		$result = connect(CLIENTSOCKET, sockaddr_un("$name")); # ���������
		if ($result != 1) {  # ������벻�ɹ����ȴ� 1 �������
		sleep(1);
	}
} while ($result != 1);
read(CLIENTSOCKET, $buf, 500);
print STDOUT "$buf\n";
close(CLIENTSOCKET);
exit 0;