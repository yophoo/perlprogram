#! /usr/bin/perl
# clockdrift - 与其他系统的时钟进行比较
#         如果没有参数，广播给其他人听
#         等待1.5秒听取回答
use v5.6.0;   # 或者更高版本
use warnings;
use strict;
use Socket;
unshift(@ARGV, inet_ntoa(INADDR_BROADCAST)) unless @ARGV;
socket(my $msgsock, PF_INET, SOCK_DGRAM, getprotobyname("udp"))
or die "socket: $!";

setsockopt($msgsock, SOL_SOCKET, SO_BROADCAST, 1)
or die "setsockopt: $!";
my $portno = getservbyname("time", "udp")
or die "no udp time port";
for my $target (@ARGV) {
        print "Sending to $target: $portno\n";
        my $destpaddr = sockaddr_in($portno, inet_aton($target));
        send($msgsock, "x", 0, $destpaddr)
        or die "send: $!";
}

my $FROM_1900_TO_EPOCH = 2_208_988_800;
my $time_fmt = "N"; 
my $time_len = length(pack($time_fmt, 1)); 
my $inmask = ' ';  
vec($inmask, fileno($msgsock), 1) = 1;

while (select (my $outmask = $inmask, undef, undef, 0.5)) {
        defined(my $srcpaddr = recv($msgsock, my $bintime, $time_len, 0))
        or die "recv: $!";
        my($port, $ipaddr) = sockaddr_in($srcpaddr);
        my $sendhost = sprintf "%s [%s]",
        gethostbyaddr($ipaddr, AF_INET) || 'UNKNOWN',
        inet_ntoa($ipaddr);
        my $delta = unpack($time_fmt, $bintime) -
        $FROM_1900_TO_EPOCH - time();
        print "Clock on $sendhost is $delta seconds ahead of this one.\n";
}
