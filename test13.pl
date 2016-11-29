#!/usr/bin/perl -w
use strict;
#my $a="She loves you yeah,	yeah,	yeah.";
#print rindex($a,"yeah"),"\n";       #Returns 26
#print rindex($a,"yeah",25);    	 #Returns 20
my $source="one fish,two fish,red fish,blue fish.";
my $start=length($source);
while(($start=rindex($source,"fish",$start))!=-1){
	print "Found a fish at $start. \n";
	$start--;

}