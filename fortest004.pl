chomp(@input = <STDIN>);
@input = sort @input;
foreach (@input) {
	print $_,"\n";
}
print @input;