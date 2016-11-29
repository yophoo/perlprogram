#!/usr/bin/perl -w
#sub sayhello{
#	print "Hello,";
#}
#sub greet{
#	sayhello();
#	print "my friends!";
#}
#greet();

sub result{
	my $num=$_[0];
	if($num>0){
		$num*result($num-1);
	}else{
		return 1;
	}
}
print result(10);