#!/usr/bin/perl -w
use strict;

chdir 'tmp' or warn "Directory tmp not accessible:$!";

my @files=<*.txt>;
my $erased=unlink @files;
#Compare actual erased number,to origianl number
if($erased!=@files){
	print "Files failed to erase:",join(',',<*.txt>),"\n";
}
