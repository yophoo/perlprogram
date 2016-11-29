#!/usr/bin/perl -w
use strict;
#Passing References
sub changehash{
	my($href)=@_;
	$$href{mammal}='bear';
	return;
}
my %hash=(fish => 'shark',bird => 'robin');
foreach(keys %hash){
	print "$_  => $hash{$_}.\n";
}
print "After changed...\n";
changehash(\%hash);
foreach(keys %hash){
	print "$_  => $hash{$_}.\n";
}
