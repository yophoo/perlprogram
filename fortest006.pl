sub max {
	my( $m,$n );       # �������е���˽�б���
	( $m,$n ) = @_;      # ��������ֵ������
	if ( $m > $n ) { $m } else { $n }

}
print max(5,7);