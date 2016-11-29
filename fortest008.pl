use 5.010;
use strict;

my $names = 'Fred Flinstone and Wilma Flinstone';
if( $names =~ m/(?<last_name>\w+) and \w+ \k<last_name>/ ) {
	say "I saw $+{last_name}";
}

my $name = 'Fred or Barney';
if ( $name =~ m/(?<name1>\w+) (?:and|or) (?<name2>\w+)/ ) {
	say "I saw $+{name1} and $+{name2}";

}

if ("Hello there,neighbor" =~ /\s(\w+),/) {
	print "That actually matched '$&'.\n";
}

if ("Hello there,neighbor" =~ /\s(\w+),/) {
	print "That was ($`) ($&) ($').\n";
	print "Matched: |$`<$&>$'|\n";
}
