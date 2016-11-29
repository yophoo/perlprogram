#!/usr/bin/perl -w
# file:TestTelnet.pl

use strict;
use Net::Telnet;
use constant HOST => '132.229.17.143';
use constant USER => 'root';
use constant PASS => 'Admin_123';

my $telnet=Net::Telnet->new(HOST);
$telnet->login(USER,PASS);
my @lines=$telnet->cmd('su - i2kadmin');
push @lines,$telnet->cmd('pwd');
print @lines;