############################################################################
#Download the blast 
wget ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/ncbi-blast-2.9.0+-x64-linux.tar.gz
tar -xzvf ncbi-blast-2.9.0+-x64-linux.tar.gz
rm ncbi-blast-2.9.0+-x64-linux.tar.gz

##############################################################################
#Download the nt database
wget ftp://ftp.ncbi.nlm.nih.gov/blast/db/nt.*.tar.gz 

for i in nt.*.tar.gz;do tar -xzvf $i;done  #untar all
#############################################################################
