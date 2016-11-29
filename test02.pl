#!/usr/bin/perl -w
$_="time is money!";
($a,$b)=/(.*)\sis\s(.*)/;
print '$a=',$a,"\n",'$b=',$b,"\n";

%Movies=('The Shining'=>'Kubrick','Ten Commandments'=>'De Mille','Goonies'=>'Spielberg');
print $Movies{'The Shining'},"\n";

print %Movies,"\n";
$key='Goonies';
delete $Movies{$key};
print %Movies,"\n";

#$mykey='The Gun';
#if(exists $Movies{$mykey}){
#	print "$mykey is a classic movies!\n";
#}else{
#	print "Oops!Are you sure $mykey is a movies?";
#}

#foreach $film(keys %Movies){
#	print "$film\n";
#}

#foreach $film(keys %Movies){
#	print "$film was directed by $Movies{$film}.\n";
#}

#@Directors=values %Movies;
#@Films=keys %Movies;
#foreach(@Directors){
#	print $_,"\n";
#}
#foreach(@Films){
#	print $_,"\n";
#}

#%ByDirector=reverse %Movies;
#foreach $director(keys %ByDirector){
#	print "$ByDirector{$director} was directed by $director.\n";
#}

#@Data=%Movies;
#%SomeMovies=@Data;
#foreach $film(keys %SomeMovies){
#	print "$film\n"
#}