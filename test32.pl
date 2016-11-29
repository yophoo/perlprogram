#!/usr/bin/perl -w
use strict;
#Passing Values
sub changehash{
	my(%local_hash)=@_;
	$local_hash{mammal}='bear';
	return;
}
my %hash=(fish=>'shark',bird=>'robin');
foreach(keys %hash){
	print "$_  => $hash{$_}.\n";
}
print "After changed...\n";
changehash(%hash);
foreach(keys %hash){
	print "$_  => $hash{$_}.\n";
}