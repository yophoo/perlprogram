#!/usr/bin/perl -w
use strict;
#The last line of 'dir' reports something like:
#	10 dir(s)	67,502,080 bytes free
#Or on Win98,"MB" instead of "bytes"
my(@dir,$free);
@dir=`dir`;
$free=$dir[$#dir];
$free=~s/([\s\d]+)\W+([\d,]+)\W+/$2/;
$free=~s/,//g;
print $free;