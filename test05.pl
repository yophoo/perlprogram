#!/usr/bin/perl -w
#@stars=('R.Reagan','C.Eastwood','M.Jackson','Cher','S.Bono');
#@pols=('N.Gingrich','S.Thurmon','R.Reagan','S.Bono','C.Eastwood','M.Thatcher');
#%seen=();
#foreach(@stars){
#	$seen{$_}=1;
#}
#@intersection=grep($seen{$_},@pols);
#foreach(@intersection){
#	print $_,"\n";
#}

%Words=('one'=>'apple','two'=>'peach','three'=>'cherry','four'=>'orange','five'=>'melon');
foreach(sort {$Words{$a} cmp $Words{$b}} keys %Words){
	print "$_ --> $Words{$_}\n";
}
