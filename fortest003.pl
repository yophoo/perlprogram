@people = qw(fred betty barney dino wilma pebbles bamm-bamm);
chomp(@numbers = <STDIN>);
foreach (@numbers) {
	print $people[$_],"\n";
}