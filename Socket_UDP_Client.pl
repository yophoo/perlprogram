#!use/bin/perl -w
# udp client
use Socket;
use IO::Handle;
use Sys::Hostname;
use strict;
my $serv_host = shift || '132.228.165.37';
my $serv_port =  9527;
my $serv_iaddr = inet_aton($serv_host);
my $serv_paddr = sockaddr_in($serv_port, $serv_iaddr);
my $client_iaddr = gethostbyname(hostname());
my $client_paddr = sockaddr_in(0,$client_iaddr);
socket(CLIENT, AF_INET, SOCK_DGRAM, getprotobyname("udp")) || die "socket: $!";
bind(CLIENT, $client_paddr)|| die "bind: $!";
CLIENT->autoflush(1);
defined(send(CLIENT, "hi,body!\n", 0, $serv_paddr)) || die "send ".hostname.": $!";
recv(CLIENT, my $buff, 100, 0);
print"From Server:$buff",scalar(localtime()),"\n";
close CLIENT or die "close: $!";