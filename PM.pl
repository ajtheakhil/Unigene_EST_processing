#!/usr/bin/perl
#----------------------------------------------------------------------------------------#
#----------------------------------------------------------------------------------------#
# Prompt the user for a file name
print "\nPlease enter a File Name: ";
$file_name = <STDIN> ;
#Cmd to open the inputfile
open(DATA, $file_name) or die "Couldn't open file file.txt, $!";
while(<DATA>){
	chomp(@line = <DATA>);
}
#----------------------------------------------------------------------------------------#
open(RESULT,">r.txt") or die "Couldn't open file r.txt, $!";
#----------------------------------------------------------------------------------------#
my $flag = 1;

foreach $t(@line){
	if($t=~m/Developmental Stage/g){
		$flag = 1;
	}
	if($t=~m/Health State/g){
		$flag = 1;
	}
	if($t=~m/Body Sites/g){
		$flag = 0;
	}
	$tpm = 0;
	if($flag == 0){
		if($t=~m/Body Sites/g){
			print RESULT "$t\n";
		}else{
			@tt = split(/\t/,$t);
			@ttt = split(/\//,$tt[1]);
			if($ttt[0] == 0){
				print RESULT "$t\t$tpm\n";
			}elsif($ttt[0] != 0){
				$tpm = ($ttt[0]/$ttt[1])*1000000;
				print RESULT "$t\t$tpm\n";
			}
		}
	}
}
#----------------------------------------------------------------------------------------#
close (RESULT); 
close (DATA);
#----------------------------------------------------------------------------------------#
