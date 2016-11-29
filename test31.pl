#!/usr/bin/perl -w
use strict;
sub getarrays{
	my($fruit_ref,$veggies_ref)=@_;
	
	print "Fruits:",join(',',@$fruit_ref);
	print "Veggies:",join(',',@$veggies_ref);
}
my(@fruit,@veggies);
@fruit=qw(apples oranges banana);
@veggies=qw(carrot cabbage trunip);
getarrays(\@fruit,\@veggies);