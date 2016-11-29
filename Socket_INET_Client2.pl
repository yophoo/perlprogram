#!/usr/bin/perl -w
# inet_socket_client.pl
use IO::Handle;
use strict;
use Socket;

# initialize server and port
my $port = shift || 7890;
my $server = "127.0.0.1";

# create the socket, connect to the port
socket(SOCKET,PF_INET,SOCK_STREAM,getprotobyname('tcp'))
   or die "Can't create a socket $!\n";
connect( SOCKET, sockaddr_in($port,inet_aton($server)))
       or die "Can't connect to port $port! \n";

SOCKET -> autoflush(1); 
my $msg =  "Why don't you call me anymore?\n"; 
send(SOCKET,$msg,0);
recv(SOCKET,my $line,1024,0); 
print "$line\n";
close SOCKET or die "close: $!";
