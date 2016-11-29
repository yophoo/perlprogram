printf("%20s","Jack");      #Right-justify "Jack" in 20-characters
print "\n";
printf("%-20s","Jill");     #Left-justify "Jill" in 20-characters
print "\n";
$amt=7.12;
printf("%6.2f",$amt);       #6位浮点数，小数点后2位数字
print "\n";
$amt=7.127;
printf("%6.2f",$amt);       #6位浮点数，小数点后2位数字，多出部分四舍五入
print "\n";
$amt=9.4;
printf("%6.2f",$amt);       #6位浮点数，小数点后2位数字，不足部分补零
print "\n";
printf("%6d",$amt);         #6位整数
print "\n";
printf("%06.2f",$amt);      #prints "009.40"
print "\n";
printf("%c",65);            #prints ASCII character for 65,"A"
print "\n";
