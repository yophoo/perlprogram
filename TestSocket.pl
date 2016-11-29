	#!/usr/bin/perl -w
	use strict;
	use IO::Socket;
	
	my $host = "132.235.17.173";
	my $port = "9527";
	my $sock = IO::Socket::INET->new(
		PeerAddr  => $host,
		PeerPort  => $port,
		Proto     => "tcp",
		Type      => SOCK_STREAM)
	or die "Socket() error, Reason : $! \n";
	
	print <$sock>;
	
	exit 0;
