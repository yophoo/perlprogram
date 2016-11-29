#!/usr/bin/perl
use Time::Local;
my ($sec,$min,$hour,$day,$mon,$year,$wday,$yday,$isdst)=gmtime(time);
#if($string=~ m/(\d+)-(\d+)-(\d+)\s(\d+):(\d+):(\d+)/){
#$year = int $1;
#$month = int $2 - 1;
#$date = int $3;
#$hour = int $4;
#$minute = int $5;
#$second = int $6;
#}
#print ("The date string is: $string\n");
#$string = timelocal( $second,$minute,$hour,$date,$month,$year);
#print "Number is $string\n";
#my $date = localtime $string;
#print "After changed, date is $date\n";
#print "$sec,$min,$hour,$day,$mon,$year,$wday,$yday,$isdst\n";
$sec = "00";
$min = "00";
$hour = "08";
my $string = timelocal($sec,$min,$hour,$day,$mon,$year);
print $string;