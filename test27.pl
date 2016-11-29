#!/usr/bin/perl -w
use strict;

system("dir /w");              #Print a file listing
#Print system's documentation
if(system("perldoc -f system")){
	print "Your documentation isn't installed correctly!\n";

}