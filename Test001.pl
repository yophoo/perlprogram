#!/usr/bin/perl -w
use strict;
use Socket;

#my $twoints = pack ("i2", 103, 91);
#my $manyints = pack ("i*", 14, 26, 11, 83);
#my $strings = pack ("a5a5", "test1", "test2");
#print $twoints,$manyints;
#print "\n",$strings;

#my $mystring = 'helloworld';
#my $Cstring = pack ("a10x", $mystring);
#print $Cstring;

#my $packstring = 'helloworld';
#my $longrightint = unpack ("@* X4 L", $packstring);
#print $longrightint;

#my $host = '192.168.10.10';
#my $ipaddr = inet_aton($host);
#my $addr = inet_ntoa($ipaddr);

#print $ipaddr,"\n",$addr;
 
#my $pid = fork();
#if( $pid == 0 ){
#   print "This is child process,process ID is: $$,the variant \$pid is: $pid\n";
#   print "Chile process is existing\n";
#   exit 0;
#}
#print "This is parent process,process ID is: $$,the variant \$pid is: $pid\n";
#print "Parent process is existing\n";
#exit 0;

#defined(my $pid=fork()) or die "Fork process failured:$!\n";  
#unless($pid)  
#{  
     # This is the child process.
#     system "date"; 
 #    sleep(3);     
 #    print ("Exit child process after 3 seconds wait!\n");  
 #    exit();  
#}  
# This is the parent process.  
#waitpid($pid,0);  
#system "date";  
#print ("Exit parent process!\n");  

my $bitstring = "";
my $offset = 0;
 
foreach my $num (0, 5, 5, 6, 2, 7, 12, 6, 3, 7, 5, 6) {
  vec($bitstring, $offset++, 4) = $num;
}
print $bitstring,"\n";

my $num_elements = length($bitstring)*2;
print length($bitstring),"\n";
foreach $offset (0 .. $num_elements-1) {
  print vec($bitstring, $offset, 4), "\n";
}

my @bits = (0,0,1,0,1,0,1,0,1,1,0,0,0,0,1,0);
#my $mystring = pack("b*", join('', @bits)); 
#print "\n","$mystring\n"; 

my $str = 'TC';
my @arr = split(//,$str);
print "@arr\n";
#my @bits = split(//, unpack("b*", $str));
print "@bits\n";
print $^;

#my @bits = (0,0,1,0, 1,0,1,0, 1,1,0,0, 0,0,1,0);
#my @bits = (0,0,0,0,1,0,1,0,1,0,1,0,0,1,1,0,0,1,0,0,1,1,1,0,0,0,1,1,0,1,1,0);
 
#$bitstring = "";
#$offset = 0;
 
#foreach my $bit (@bits) {
#  vec($bitstring, $offset++, 1) = $bit;
#}
 