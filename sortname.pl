#!/usr/bin/perl -w
use strict;

my($dir,$oldpat,$newpat);
print "Directory:";
chomp($dir=<STDIN>);

opendir(DH,$dir)||die "Cannot open $dir:$!";
my @files=readdir DH;
close(DH);
my ($len,$prefix,$postfix,$name,$newname,$i,$j,$k,$l);
$i=$j=$k=$l=0;
$prefix='20130117_';
foreach(@files){
	next if(-d "$dir/$_");
	$len=length($_);
	$postfix=substr($_,($len-3),3);	
#	print "$postfix \n";
	if($_=~m/\.gif$/i){
		$i++;
		if($i<10){
			$name='GIF_0000'.$i;
		}elsif($i<100){
			$name='GIF_000'.$i;
		}elsif($i<1000){
			$name='GIF_00'.$i;
		}elsif($i<10000){
			$name='GIF_0'.$i;
		}else{
			$name='GIF_'.$i;
		}
		$newname=$prefix.$name.'.gif';
	}elsif($_=~m/\.jpe?g$/i){			
		$j++;
		if($j<10){
			$name='JPG_0000'.$j;
		}elsif($j<100){
			$name='JPG_000'.$j;
		}elsif($j<1000){
			$name='JPG_00'.$j;
		}elsif($j<10000){
			$name='JPG_0'.$j;
		}else{
			$name='JPG_'.$j;
		}
		$newname=$prefix.$name.'.jpg';
	}elsif($_=~m/\.bmp$/i){
		$k++;
		if($k<10){
			$name='BMP_0000'.$k;
		}elsif($k<100){
			$name='BMP_000'.$k;
		}elsif($k<1000){
			$name='BMP_00'.$k;
		}elsif($k<10000){
			$name='BMP_0'.$k;
		}else{
			$name='BMP_'.$k;
		}
		$newname=$prefix.$name.'.bmp';
	}else{
		$l++;
		$postfix=uc($postfix);
		if($l<10){
			$name=$postfix.'_0000'.$l;
		}elsif($l<100){
			$name=$postfix.'_000'.$l;
		}elsif($l<1000){
			$name=$postfix.'_00'.$l;
		}elsif($l<10000){
			$name=$postfix.'_0'.$l;
		}else{
			$name=$postfix.'_'.$l;
		}
		$newname=$prefix.$name.'.'.$postfix;
	};
	if(!rename "$dir/$_","$dir/$newname"){
			warn "Could not rename $_ to $newname:$!";
		}else{
			print "File $_ renamed to $newname!\n";
		}
}