@rock = qw/ bedrock slate lava /;
foreach $rock (@rock){
	$rock = "\t$rock";              # ��@rock ��ÿ��Ԫ��֮ǰ�����Ʊ��
	$rock .= "\n";                  # ͬʱ��ĩβ���ϻ��з�
}
print "The rocks are :\n",@rock;    # ����ռһ�У���ʹ������

$_ = "Yabba dabba doo\n";
print;    # Ĭ�ϴ�ӡ $_

foreach(1..10){       # Ĭ�ϻ��� $_ ����
	print "I can count to $_!\n";
}