sub print_array{
	my @print_value=@_;
	foreach(@print_value){
		print $_,"\n";
	}
}
opendir(TEMP,'tmp')||die "Cannot open tmp:$!";
#@FILES=readdir TEMP;
#@FILES=grep(!/^\.\.?$/,readdir TEMP);
@FILES=grep(/\.txt$/i,readdir TEMP);
closedir(TEMP);
print_array(@FILES);