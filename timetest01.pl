#!/usr/bin/perl 
use strict; 
use warnings; 
use POSIX qw(strftime); 
print strftime("%Y-%m-%d %H:%M:%S\n", localtime(time));


my @months = qw( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec );
my @days = qw(Sun Mon Tue Wed Thu Fri Sat Sun);

my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
print "$mday $months[$mon] $days[$wday]\n";

my $datestring1 = localtime();
print "Local date and time $datestring1\n";

my $datestring2 = gmtime();
print "GMT date and time $datestring2\n";