#!/usr/bin/perl -w
use strict;
my $a="Punctuation marks are symbols that indicate the structure and organization of written language, as well as intonation and pauses to be observed when reading aloud.";
$a=~tr/A-Za-z/a-zA-Z/;
print $a;