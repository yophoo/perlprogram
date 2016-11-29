#!/usr/bin/perl -w
@fishwords=('one','fish','two','fish','red','fish','blue','fish');
%seen=();
foreach(@fishwords){
	$seen{$_}=1;
}
@uniquewords=keys %seen;

foreach(@uniquewords){
	print $_,"\n";
}