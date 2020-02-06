#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=4000
#SBATCH --time=01:00:00
#SBATCH --partition=scavenge

cd /home/rcf-40/tkitapci  #move to the login directory
source .profile  #source .profile or any file that needs to be sourced such as .bashrc

working_dir="/staging/st5/tkitapci/Mouse_Cell_Line/blast"

cd $working_dir    #Always cd to the working dir!! This is very important!!

echo "Job Start THK"
date

./ncbi-blast-2.9.0+/bin/blastn \
-query q.fasta \
-db nt \
-out q.fasta.tab \
-evalue 1e-5 \
-outfmt "6 qseqid sscinames sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore" \
-max_target_seqs 1

#outfmt 6 default value is "qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore"

echo "Job complete THK"
date
