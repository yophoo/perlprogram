#!/usr/bin/perl -w
sub shift_to_uppercase{
	@words=qw(cia fbi un nato unicef u.s.a.);
	foreach(@words){
		$_=uc($_);
	}
	return @words;
}

@acronyms=shift_to_uppercase();
foreach(@acronyms){
	print $_,"\n";
}