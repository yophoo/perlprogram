#!/usr/bin/perl -w
use strict;
use 5.010;
use Data::Dumper;

$_ = "yabba dabba ybaab dbaab";
if (/y((.)(.)\3\2) d\1/) {
	print "It matched!\n";
}else{
	print "No matched!!\n"
}