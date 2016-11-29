sub print_array{
	my @print_value=@_;
	foreach(@print_value){
		print $_," ";
	}
	print "\n";
}
@veg=qw(carrots corn);
splice(@veg,0,1);            #@veg is corn
print_array(@veg);
splice(@veg,0,0,qw(peas));   #@veg is peas,corn
print_array(@veg);
splice(@veg,-1,1,qw(barley turnlip));  #@veg is peas,barley,turnlip
print_array(@veg);
splice(@veg,1,1);            #@veg is peas,turnlip
print_array(@veg);