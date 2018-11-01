###############################################################
#  Perl script to count the number of publications in PUBMED  #
#  per Country in a particular research area                  #
#                                                             #
#                     - Arindam Ghosh (1 November 2018)       #
###############################################################

#!/usr/bin/perl
use Cwd;

$cwd = getcwd;


open (FH1, "/home/bioinfo/Desktop/test/country.txt");

@country = <FH1>;

close FH1;



print "Enter query/research area to search:";
$query=<>;
chomp($query);

print "From year (YYYY):";
$from_year=<>;
chomp($from_year);
print "From month (MM):";
$from_mnth=<>;
chomp($from_mnth);
print "From date (DD):";
$from_date=<>;
chomp($from_date);


print "To year (YYYY):";
$to_year=<>;
chomp($to_year);
print "To month (MM):";
$to_mnth=<>;
chomp($to_mnth);
print "To date (DD):";
$to_date=<>;
chomp($to_date);




open (FH2, '>', "/home/bioinfo/Desktop/test/output.txt");

print FH2 "Sl.no.\tCountry\tCount\n";


for($i=1; $i<@country; $i++)
{

chop($country[$i]);

$cmd = "esearch -db pubmed -query \"(($country[$i]\[Affiliation\]) AND ($query\[Title/Abstract\] AND (\"$from_year\/$from_mnth\/$from_date\"[Date - Entrez] : \"$to_year\/$to_mnth\/$to_date\"[Date - Entrez]))\" | xtract -pattern ENTREZ_DIRECT -element Count";

$count = qx/$cmd/;

print FH2 "$i\t$country[$i]\t$count";

};

close FH2;




