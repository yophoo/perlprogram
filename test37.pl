#!/usr/bin/perl -w
use strict;
use 5.010;
use Data::Dumper;

my @numbers = qw(11 103 34 54 15 23 110 99 23 43 11 34 24 102);
#my @sorted = sort{
#	return(1) if($a>$b);
#	return(0) if($a==$b);
#	return(-1) if($a<$b);
#}@numbers;
my @sorted = sort{$a <=> $b}@numbers;
print Dumper \@sorted;
my @reversed = reverse(@sorted);
print Dumper \@reversed;
my $string = "Hello World";
print scalar reverse($string),"\n";
my $rstring = reverse($string);
print $rstring,"\n";