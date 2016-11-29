#!/usr/bin/perl -w
use 5.010;
use strict;
my ($a,$b);
say "a=";
chomp($a = <STDIN>);
say "b=";
chomp($b = <STDIN>);
say "a x b=",$a x $b;