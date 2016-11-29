#!/usr/bin/perl
use DBI;
use strict;

my $driver = "mysql"; 
my $database = "test";
my $host = "192.168.56.101";
my $port = "3306";
my $dsn = "DBI:$driver:database=$database:host=$host:port=$port";
my $userid = "root";
my $password = "yophoo518976";

my $dbh = DBI->connect($dsn, $userid, $password ) or die $DBI::errstr;
$dbh->do("SET character_set_client='gbk'");
$dbh->do("SET character_set_connection='gbk'");
$dbh->do("SET character_set_results='gbk'");

# normal insert statement
# record 1
my $sth = $dbh->prepare("INSERT INTO employee
                       (name, sex, age, address, description )
                        VALUES
                       ('john', 'male', 30, 'Unite State', 'employee')");
$sth->execute() or die $DBI::errstr;
$sth->finish();
# record 2
my $sth = $dbh->prepare("INSERT INTO employee
                       (name, sex, age, address, description )
                        VALUES
                       ('李四', '女', 23, '中国', '雇员')");
$sth->execute() or die $DBI::errstr;
$sth->finish();

# retrieve result
my $sth = $dbh->prepare( "
              SELECT *
              FROM employee");
$sth->execute( );
print "\tQuery results:\n================================================\n";
while ( my @row = $sth->fetchrow_array( ) )  {
         print "@row\n";
}
warn "Problem in retrieving results", $sth->errstr( ), "\n"
        if $sth->err( );
$dbh -> disconnect();
exit 0;