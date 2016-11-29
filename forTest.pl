#!/usr/bin/perl -w
use strict;

my $bitstring = "";
my $offset = 0;
 
foreach my $num (0, 5, 5, 6, 2, 7, 12, 6) {
  vec($bitstring, $offset++, 4) = $num;
}

print $bitstring,"\n";

my $P_str =  substr(unpack('b16',pack('n',ord('P'))),-8);
my $e_str =  substr(unpack('b16',pack('n',ord('e'))),-8);
my $r_str =  substr(unpack('b16',pack('n',ord('r'))),-8);
my $l_str =  substr(unpack('b16',pack('n',ord('l'))),-8);
my $str = $P_str.$e_str.$r_str.$l_str;
print $str,"\n";

print pack('b32',$str);