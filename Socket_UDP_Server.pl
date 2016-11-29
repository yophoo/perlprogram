#!use/bin/perl -w
# udp server
use Socket;
use IO::Handle;
use strict;

my $port = 9527;
my $localhost = sockaddr_in($port, INADDR_ANY);
socket(SERVER, AF_INET, SOCK_DGRAM, getprotobyname("udp")) || die "socket: $!";
bind(SERVER, $localhost) || die "bind: $!";
SERVER->autoflush(1);
while(1){ 
	next unless my $client = recv(SERVER, my $buff, 100, 0);
	chop($buff); 
	print "From Client:$buff",scalar(localtime()),"\n";
	my $msg = "Hi,I received your message:".$buff."\n";
	send(SERVER,$msg,0,$client) || die "send:$client:$! \n";
}
close SERVER;