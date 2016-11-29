#!/usr/bin/perl -w
use strict;
use IO::Socket;

my $host = "www.jsoa.net";
my $port = "80";
my $http_head = "GET / HTTP/1.0\nHost: $host:$port\n\n";
my $sock = IO::Socket::INET->new("$host:$port") or die "Socket() error, Reason : $! \n";

print $sock $http_head;
print <$sock>;

exit 0;