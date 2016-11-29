use 5.010;
use strict;

say "请输入需要对齐的列数：";
chomp(my $num = <STDIN>);
#while (<STDIN>){
#	 printf "%".$num."s\n",$_;
#	 last if(/end/);
#}
while (<STDIN>){
	 printf "%${num}s\n",$_;
	 last if(/end/);
}