#!/usr/bin/perl -w
#sub display_box_score{
#	($hits,$at_bats)=@_;
#	print "For $at_bats trips to the plate,";
#	print "he's hitting ",$hits/$at_bats,"\n";
#}
#display_box_score(50,210);

sub sort_numerically{
	print "Sorting...";
	return (sort{$a<=>$b} @_);
}
@items=(23,12,56,22,4,3,25,21,10,1,8,5,6);
@sorted_items=sort_numerically(@items);
foreach(@sorted_items){
	print $_," ";
}