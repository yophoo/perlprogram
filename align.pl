use 5.010;
use strict;

say "��������Ҫ�����������";
chomp(my $num = <STDIN>);
#while (<STDIN>){
#	 printf "%".$num."s\n",$_;
#	 last if(/end/);
#}
while (<STDIN>){
	 printf "%${num}s\n",$_;
	 last if(/end/);
}