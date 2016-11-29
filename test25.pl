#!/usr/bin/perl -w
use strict;

chdir 'tmp' or warn "Directory tmp not accessible:$!";

if(!rename "test01.txt","archive01.txt"){
	warn "Could not rename test01.txt:$!";
}