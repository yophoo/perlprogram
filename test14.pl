#!/usr/bin/perl -w
use strict;
my $a="I do not like green eggs and ham.";
print substr($a,25),"\n";      #prints "and ham."
print substr($a,14,5),"\n";    #prints "green"
print substr($a,-5),"\n";
print substr($a,5,-5);