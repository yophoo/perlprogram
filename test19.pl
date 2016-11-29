@band=qw(trombone);
push @band,qw(ukulele charinet);   #@band now contains trombone,ukulele,charinet
foreach(@band){
	print $_," ";
}
print "\n";
$brass=shift @band;                  #$brass now has "trombone"
print $brass,"\n";
$wind=pop @band;                     #$wind now has "clarinet"
print $wind,"\n";
#@band now ontains only "ukulele"
unshift @band,"harmonica";           #@band now contains "harmonica" and "ukulele"
foreach(@band){
	print $_," ";
}