#system("dir > myfile.txt");
#system("sort myfile.txt > newfile.txt");
#system("more newfile.txt");

#system("dir /B|sort|perl totaler.pl|more");
open(RHANDLE,"dir /B|sort|")||die "Cannot open pipe for reading:$!";
open(WHANDLE,"|more")||die "Cannot open pipe for writing:$!";
#my @content=<RHANDLE>;
#print WHANDLE @content;
print WHANDLE <RHANDLE>;
close(RHANDLE)||warn "pipe to more failde:$!";
close(WHANDLE)||warn "pipe to more failde:$!";

print $^O;