sub max {
	my( $m,$n );       # 该语句块中的新私有变量
	( $m,$n ) = @_;      # 将参数赋值给变量
	if ( $m > $n ) { $m } else { $n }

}
print max(5,7);