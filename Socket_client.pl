#!/usr/bin/perl -w
# Socket_client.pl
#----------------

use strict;
use Socket;

# initialize host and port
my $port = shift || 7890;
my $server = "127.0.0.1";

# create the socket, connect to the port
socket(SOCKET,PF_INET,SOCK_STREAM,getprotobyname('tcp'))
   or die "Can't create a socket $!\n";
connect( SOCKET, sockaddr_in($port,inet_aton($server)))
       or die "Can't connect to port $port! \n";
select((select(SOCKET), $| = 1)[0]); 
print SOCKET "Why don't you call me anymore?\n";
while (my $line = <SOCKET>) {
	print "$line\n";
}
close SOCKET or die "close: $!";