#!/usr/bin/perl -w
%Words=();
while(<>){
	while(/(\w[\w-]*)/g){
		$Words{$1}++;
	}
}
foreach(keys %Words){
	print "$_ $Words{$_}\n";
}