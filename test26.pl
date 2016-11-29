#!/usr/bin/perl -w
use strict;

chdir 'tmp' or warn "Directory tmp not accessible:$!";

# rename "test01.txt","./test/test01.txt";

print "The file has ",(stat("joke.txt"))[7]," bytes of data\n";

print scalar localtime((stat("joke.txt"))[9]);
