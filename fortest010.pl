use 5.010;
foreach ( 0,undef,'0',1,25 ) {
	print "Trying [$_] -->";
	my $value = $_ // 'default';
	say "\tgot [$value]";
}
