#!/usr/bin/perl -w
#sub moonweight{
#	($weight)=@_;
#	return($weight/6);
#}
#print moonweight(150);
#$weight=300;
#print moonweight;

sub myfunc{
	my $x;
	$x=20;          #This is a private $x
	print "$x\n";
}
$x=10;              #This is a global $x
print "$x\n";
myfunc();
print "$x\n";