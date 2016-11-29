#!/usr/bin/perl -w
use strict;
use Net::SSH2;
use Data::Dumper;
 
my $host = '192.168.56.101';
my $user = 'yophoo';
my $password = 'yophoo518976';


print "Creating Connection...\n";
my $ssh2 = Net::SSH2->new();
$ssh2->connect($host) or die "Unable to connect to host $@ \n";

print "Logging in...\n";
$ssh2->auth_password($user,$password) or die "Unable to login $@ \n";

my $sftp = $ssh2->sftp();
my $fh = $sftp->open('/etc/passwd') or die;
print while <$fh>;

print "Opening Channel...\n";
my $chan = $ssh2->channel();
#$chan->blocking(0);

#$chan -> exec("uname -a;vxdisk list");
#print $_ while (<$chan>);

my $dir = '/home/yophoo';
$sftp -> mkdir($dir);
my %stat = $sftp -> stat($dir);
print Dumper([\%stat]), "\n";

# my $remote = "$dir/".time;
my $remote = "$dir/test";
$ssh2->scp_put($0, $remote);

select(undef,undef,undef,0.2);

my $dir1 = '/home';
my $dh = $sftp -> opendir($dir1);
while(my $item = $dh -> read) {
    print $item -> {'name'},"\n";
    }

my $buf;
$chan->shell();
$_='' while <$chan>;
$chan->write('netstat -r;whoami;pwd;ps -ef | grep ssh;');
$chan->write('uname -a;');
$chan->send_eof();
select(undef,undef,undef,0.2);
print $buf while ($chan->read($buf,32)) > 0;

#$chan->shell();
#print $chan "\n";
#$_ = '' while <$chan>;
#print $chan "uname -a\n";
#print $_ while <$chan>;
#print $chan "who\n";
#print $_ while <$chan>;
#print $chan "cd /var;ls -l\n";
#print $_ while <$chan>;

print "Closing connection...\n";
$chan->close;
$ssh2->disconnect;

 