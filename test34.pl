#!/usr/bin/perl -w
use strict;

#my $href;
#{
#	my %hash=(phone=>'Bell',light=>'Edison');
#	$href=\%hash;
#}
#print $$href{light};    #It will print "Edison"!

my @list_of_lists=([qw(Mustang Bronco Ranger)],
                [qw(Cavalier Suburban Buick)],
                [qw(LeBaron Ram)],
               );
print $#list_of_lists,"\n";             #Last element of @list_of_lists:2
print scalar(@list_of_lists),"\n";      #Number of rows in @list_of_lists:3

print scalar(@{$list_of_lists[2]}),"\n";          #From the 3rd row,2 elements
print $#{$list_of_lists[1]},"\n";                 #From the 2nd row,last element is 2

foreach my $outer(@list_of_lists){
	foreach my $inner(@{$outer}){
		print "$inner"," ";
	}
	print "\n";

}
push(@list_of_lists,[qw(Mercedes BMW Lexus)]);     #A new row
push(@{$list_of_lists[0]},qw(Taurus));             #A new element to one list

foreach my $outer(@list_of_lists){
	foreach my $inner(@{$outer}){
		print "$inner"," ";
	}
	print "\n";

}
           