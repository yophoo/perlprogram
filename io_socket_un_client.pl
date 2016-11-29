#!use/bin/perl -w
use strict;
use IO::Socket::UNIX;

my $socket = IO::Socket::UNIX->new(
    Type => SOCK_STREAM,
    Peer => '/home/tmp/mysocket',
) || die "Can't create socket: $!";

my $line;

print $socket "one\n";
chomp( $line = <$socket> );
print $line,"\n";

print $socket "two\n";
chomp( $line = <$socket> );
print $line,"\n";

$line = "three";
print  $line,"\n";
close $socket;