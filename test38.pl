#!/usr/bin/perl -w
use strict;
use Data::Dumper qw(Dumper);

# my $str = "ab cd ef gh ij";
# my @words = split / /, $str;
# print Dumper \@words;
# print Dumper @words;
# my %pet = ('1'=>'kitty','2'=>'puppy','3'=>'pony','4'=>'piggy','5'=>'bunny','6'=>'ducky','7'=>'chicky');
# print Dumper \%pet;
# print Dumper %pet;

my %hash = ('sca' => 123, 'arr' => [4,5,6], 'has'=>{'1'=>'kitty','2'=>'puppy','3'=>'pony','4'=>'bunny'});
print Dumper(\%hash);

my $str = "Hello World";
my @chars = split //, $str;
print Dumper \@chars;

my $characters=join('-',('a'..'z'));
print $characters;