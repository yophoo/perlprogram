my $dino = "I fear that I'll be extinct after 1000 years.";
if($dino =~ /(\d*) years/) {
	print "That said '$1' years.\n";    # $1 Îª 1000
}
$dino = "I fear that I'll be extinct after a few million years.";
if($dino =~ /(\d*) years/) {
	print "That said '$1' years.\n";    # $1 Îª¿Õ×Ö·û´®
}
