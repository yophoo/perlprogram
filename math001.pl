#!/usr/bin/perl -w
foreach my $num (1..100){
	if((2**$num-$num)%3==0 && (3**$num-$num)%5==0 && (5**$num-$num)%2==0){
		print $num,"\n";
	}
}