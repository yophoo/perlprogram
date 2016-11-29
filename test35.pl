#!/usr/bin/perl -w
use strict;

my $mystery_reference=[qw(dog cat pig cow sheep goat)];
print join(',',@{$mystery_reference});