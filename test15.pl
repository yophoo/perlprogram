#!/usr/bin/perl -w
use strict;
my $a="countrymen,lend me your wallets";
#Replace first character of $a with "Romans,C"
substr($a,0,1)="Romans,C";
print $a,"\n";

#Insert "Friends" at the beginning of $a
substr($a,0,0)="Friends,";
print $a,"\n";

substr($a,-7,7)="ears.";    #Replace last 7 characters
print $a,"\n";