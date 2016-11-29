#!/usr/bin/perl -w
# file:getpm.pl

use strict;
use Net::Telnet;
use constant HOST => '132.229.17.143';
use constant USER => 'root';
use constant PASS => 'Admin_123';

use Time::Local;
my ($sec,$min,$hour,$day,$mon,$year,$wday,$yday,$isdst)=gmtime(time);
$sec = "00";
$min = "00";
$hour = "08";
my $string = timelocal($sec,$min,$hour,$day,$mon,$year);
my $postfix = join "-",$year+1900,$mon+1,$day;

my $telnet=Net::Telnet->new(HOST);
$telnet->login(USER,PASS);
my @lines=$telnet->cmd('su - i2kadmin');
push @lines,$telnet->cmd(". /opt/itm/sc/4S4.G44.51/oam/bin/itmsc_setup");
push @lines,$telnet->cmd(String =>"/opt/itm/sc/4S4.G44.51/ems/bin/ems_pm_command -n pm-$postfix -b $string -e $string -g 2 -s",
                          Timeout => 300);
push @lines,$telnet->cmd("cd /var/spool/itm/sc/pm_archive");
push @lines,$telnet->cmd("gzip -d pm-$postfix.gz");
print @lines;