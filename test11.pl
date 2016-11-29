#!/usr/bin/perl -w
use strict;
#sub mess_with_foo{
#	$foo=0;
#}
#sub myfunc{
#	my $foo=20;
#	mess_with_foo();
#	print $foo;
#}
#myfunc();

# ½×³ËµÝ¹éº¯Êýfactorial()
sub factorial{
	my($num)=@_;
	return(1) if($num<=1);
	return($num*factorial($num-1));
}
print factorial(11);
