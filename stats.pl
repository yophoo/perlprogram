#!/usr/bin/perl -w
use strict;
sub mean{
	my(@data)=@_;
	my $sum;
	foreach(@data){
		$sum+=$_;
	}
	return($sum/@data);
}
sub median{
	my(@data)=sort{$a<=>$b}@_;
	if(scalar(@data)%2){
		return($data[@data/2]);
	}else{
		my($upper,$lower);
		$lower=$data[@data/2];
		$upper=$data[@data/2-1];
		return(mean($lower,$upper));
	}
}
sub std_dev{
	my(@data)=@_;
	my($sq_dev_sum,$avg)=(0,0);
	
	$avg=mean(@data);
	foreach my $elem(@data){
		$sq_dev_sum+=($avg-$elem)**2;
	}
	return(sqrt($sq_dev_sum/@data-1));
}
my($data,@dataset);
print "Please enter data,separated by commas:";
$data=<STDIN>;
chomp $data;
@dataset=split(/[\s,]+/,$data);

print "Median:",median(@dataset),"\n";
print "Mean:",mean(@dataset),"\n";
print "Standard Dev.",std_dev(@dataset),"\n";