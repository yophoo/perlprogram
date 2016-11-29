#!/usr/bin/perl -w
# file: TestFTP.pl
use Net::FTP;
use Time::Local;
use POSIX qw(strftime);

my $pmfile = "pm".strftime("%Y-%m-%d\n", localtime(time));
chomp $pmfile;

use constant OFSNSC3 => '132.229.17.133';
use constant DIR => '/home/i2kadmin/pm/pm_pday';

my $ftp = Net::FTP->new(OFSNSC3) or die "Couldn't connect OFSNSC3: $@\n";
$ftp->login('i2kadmin','sunny123') or die $ftp->message;
$ftp->cwd(DIR) or die $ftp->message;
#my $info = $ftp -> pwd() or die $ftp->message;
#print $info;
$ftp->get($pmfile) or die $ftp->message;
$ftp->quit;

warn "File retrieved successfully.\n";
