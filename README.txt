EST Profile Processing
All programs are written in Perl.
These perl programs are used to process Unigene EST Profile data.

The main file (Hs.profile.gz) will be downloaded from NCBI ftp sites (ftp://ftp.ncbi.nih.gov/repository/UniGene/Homo_sapiens/).
PM.pl will only generate data related "Body State" which will be saved into a file.
Generated data will be in tab delimated TXT format.
This processed file will be converted to Clustered data using CM.pl.
