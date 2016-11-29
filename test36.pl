#!/usr/bin/perl -w
use strict;
my $time = localtime;
(my $sec, my $min, my $hour, my $mday, my $mon, my $year_off, my $wday, my $yday, my $isdst)=localtime;
print $time,"\n";
print $year_off,"\n";

my @trees=qw(oak cedar maple apple peach pine cherry);
print @trees;
foreach my $tree(@trees){
	print "$tree"; 
	print "\n";
}
