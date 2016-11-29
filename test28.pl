#!/usr/bin/perl -w
use strict;

#system("Perldoc perlfaq5>faqfile.txt");
my $directory=`dir`;
print $directory,"\n";

my @directory=`dir`;
foreach(@directory){
	print $_;
}