#!/usr/bin/perl -w
# inet_socket_server.pl
use IO::Handle;
use strict;
use Socket;

# use port 7890 as default
my $host = shift || 'localhost';
my $port = shift || 7890;
my $proto = getprotobyname('tcp');

# create a socket, make it reusable
socket(SOCKET, PF_INET, SOCK_STREAM, $proto) 
   or die "Can't open socket $!\n";
setsockopt(SOCKET, SOL_SOCKET, SO_REUSEADDR, 1) 
   or die "Can't set socket option to SO_REUSEADDR $!\n"; 

# bind to a port, then listen
bind( SOCKET,  sockaddr_in($port,inet_aton($host)))
       or die "Can't bind to port $port! \n";      # 
listen(SOCKET, 5) or die "listen: $!";    
print "SERVER started on port $port\n";

# accepting a connection
while (my $client_paddr = accept(NEW_SOCKET, SOCKET)) {
	# send them a message, close connection
	my ($client_port, $client_iaddr) = sockaddr_in($client_paddr); 
	my $client_name = gethostbyaddr($client_iaddr, AF_INET);
	my $client_ipaddr = inet_ntoa($client_iaddr); 
	print "Welcome $client_name connect from $client_ipaddr on port $client_port��\n";
	NEW_SOCKET -> autoflush(1); 
	recv(NEW_SOCKET,my $line,1024,0);
	print "Receive message from $client_name:$line\n";
	my $msg = "Smile from the server\n";
	send(NEW_SOCKET,$msg,0);
	close NEW_SOCKET;
}
