#!/usr/bin/perl -w
my ($i,$j,$flag);
my @primes;
foreach $i (1..1000){
	$flag=1;
	for($j=2;$j<$i;$j++){
		if($i % $j == 0){
			$flag=0;
			last;
		}
	}
	if($flag == 1 && $i !=1){
		push @primes,$i;
		print $i,"\n";
	}
}