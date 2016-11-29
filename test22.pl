opendir(TD,"tmp")||die "Cannot open tmp:$!";
while($file=readdir TD){
	#The following is WRONG
	open(FILE,$file)||die "Cannot open $file:$!\n";
	close(FILE);
}
closedir(TD);
