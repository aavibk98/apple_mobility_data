#!/bin/bash

# Aavikumar Bhakta
# October 27, 2021
# abhakta2@dons.usfca.edu

# calculate and report out the total number of sequences in the file
zcat /blast-db/sars-cov-2-seq-data/2021-10-24_ncbi_sars_cov2_sequences.fasta.gz | grep -c ">"

# this is the part of the command that is able to identify where the country is located in the sequence file using awk -F'|' and then print out the country using {print $21}
# then the countries are listed in alphabetical times and listed as many times as they appear in the sequence using sort 
	# zcat /blast-db/sars-cov-2-seq-data/2021-10-24_ncbi_sars_cov_2_sequences.fasta.gz | awk -F'|' {print $3}' | sort 
# this is the part of the command that sorts the countries using a numbering system and lists them out from most appearances to least
	# | uniq -c | sort -rn
zcat /blast-db/sars-cov-2-seq-data/2021-10-24_ncbi_sars_cov2_sequences.fasta.gz | awk -F'|' '{print $21}' | sort | uniq -c | sort -rn

