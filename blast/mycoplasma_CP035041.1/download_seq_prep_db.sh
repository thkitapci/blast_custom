https://www.ncbi.nlm.nih.gov/search/all/?term=CP035041.1 #download mycoplasma

wget ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_mouse/release_M23/GRCm38.p6.genome.fa.gz #download mus musculus

wget https://ftp.ncbi.nlm.nih.gov/blast/db/taxdb.tar.gz

tar -xzvf taxdb.tar.gz

../ncbi-blast-2.9.0+/bin/makeblastdb -in CP035041.1.fasta -dbtype "nucl"
