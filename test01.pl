#!/usr/bin/perl -w
print "Please input some words:\n";
@input=<STDIN>;
@words=map{split ' ',$_} @input;
foreach(@input){
	print $_,"\n";
}
foreach(@words){
	print $_,"\n";
}