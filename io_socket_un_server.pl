#!use/bin/perl -w
use strict;
use IO::Socket::UNIX;

my $socket_path = '/home/tmp/mysocket';
unlink $socket_path if -e $socket_path;

my $socket = IO::Socket::UNIX->new( 
    Local  => $socket_path,
    Type   => SOCK_STREAM,   
    Listen => SOMAXCONN,    
) || die "Can't create socket: $!";

while (1) {
	my $connection = $socket->accept; 
     if (fork() == 0) { 
        $connection->autoflush(1); 
        while (my $line = <$connection>) {
            chomp($line);
            print $connection "$line\n";
        }
        close $connection;
        exit;
    }
}