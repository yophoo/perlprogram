#!/usr/bin/perl -w
$fred = 3;
$barney = 4;
$wilma = &sum_of_fred_and_barney;      # $wilma Ϊ 7
print "\$wilam is $wilma.\n";
$betty = 3 * &sum_of_fred_and_barney;   # $betty Ϊ 21
print "\$betty is $betty.\n";

sub sum_of_fred_and_barney {
	print "Hey,you called the sum_of_fred_and_barney subroutine!\n";
	$fred + $barney;    # ����Ƿ���ֵ
}

@rocks = qw/ talc mica feldspar quartz /;
print $rocks[3];