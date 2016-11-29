@rock = qw/ bedrock slate lava /;
foreach $rock (@rock){
	$rock = "\t$rock";              # 在@rock 的每个元素之前加上制表符
	$rock .= "\n";                  # 同时在末尾加上换行符
}
print "The rocks are :\n",@rock;    # 各自占一行，并使用缩排

$_ = "Yabba dabba doo\n";
print;    # 默认打印 $_

foreach(1..10){       # 默认会用 $_ 迭代
	print "I can count to $_!\n";
}