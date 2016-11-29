use 5.010;
use strict;

my @stack = ();
while( <> ){
	push @stack,$_;
}

while($#stack){
	print pop @stack;
}