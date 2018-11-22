#!/usr/bin/perl
#----------------------------------------------------------------------------------------#
# Prompt the user for a file name
print "\nPlease enter a File Name: ";
$file_name = <STDIN> ;
#Cmd to open the inputfile
open(DATA, $file_name) or die "Couldn't open file file.txt, $!";
chomp(@line = <DATA>);

#----------------------------------------------------------------------------------------#
open(RESULT,">r.txt") or die "Couldn't open file r.txt, $!";
#----------------------------------------------------------------------------------------#
#%master=();
@items=qw(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0); 
#----------------------------------------------------------------------------------------#
print RESULT "id\tadipose tissue\tadrenal gland\tascites\tbladder\tblood\tbone\tbone marrow\tbrain\tcervix\tconnective tissue\tear\tembryonic tissue\tesophagus\teye\theart\tintestine\tkidney\tlarynx\tliver\tlung\tlymph\tlymph node\tmammary gland\tmouth\tmuscle\tnerve\tovary\tpancreas\tparathyroid\tpharynx\tpituitary gland\tplacenta\tprostate\tsalivary gland\tskin\tspleen\tstomach\ttestis\tthymus\tthyroid\ttonsil\ttrachea\tumbilical cord\tuterus\tvascular\n";

foreach $t(@line){
	if($t=~m/^>/){
		$items[0]=$t;
		#print "$t\n";
		$i=1;
	}else{
		@x = split("\t",$t);
		$items[$i]=$x[2];
		#print "$ite\t";
		$i++;
		if($i==46){
			foreach $$t(@items){print RESULT "$$t\t";}
			print RESULT "\n";
		}
#=cut
	}
}
#----------------------------------------------------------------------------------------#
close (RESULT); 
close (DATA);
#----------------------------------------------------------------------------------------#
