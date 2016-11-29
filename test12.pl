#!/usr/bin/perl -w
use strict;
#my @a=qw(oats	peas	beans);
#print index join("	",@a),"peas";
#my $reindeer="dasher dancer prancer vixen";
#print index($reindeer,"da"),"\n";
#print index($reindeer,"da",1);
my $source="one fish,two fish,red fish,blue fish.";
my $start=-1;
while(($start=index($source,"fish",$start))!=-1){
	print "Found a fish at $start. \n";
	$start++;
}
