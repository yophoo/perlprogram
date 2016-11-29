#!/usr/bin/perl -w
use strict;

use Cwd;
print "Your current directory is:",cwd,"\n";
chdir 'tmp' or warn "Directory tmp not accessible:$!";
print "You are now in:",cwd,"\n";

print "Directory to create?";
my $newdir=<STDIN>;chomp $newdir;
mkdir($newdir,0755)||die "Failed to create $newdir:$!";

print "Directory to removed?";
my $baddir=<STDIN>;chomp $baddir;
rmdir($baddir)||die "Failed to remove $baddir:$!";