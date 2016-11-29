#!/usr/bin/perl -w
#sub yesno{
#	print "Are you sure (Y/N)?";
#	$answer=<STDIN>;
#	chomp $answer;
#	if($answer eq 'Y'||$answer eq 'N'){
#		print "OK!Let us begin..... \n";
#	}else{
#		print "Oops,are you kidding me?Please to ensure what you input and try again!";
#	}
#}
#yesno();

sub countdown{
	for($i=10;$i>=0;$i--){
		if($i==0){
			print "$i\n";
		}else{
			print "$i => ";	
		}
	}
}


print "Subroutine begin: \n";
countdown();
print "Subroutine end! \n";