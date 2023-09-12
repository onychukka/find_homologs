#!/usr/bin/bash

cat ERR431227.fna ERR430992.fna > combinedfna_file.fna
#grep -E 'GTTCACTGCCGTGTAGGCAGCTAAGAAA' combinedfna_file.fna | wc -l 
blastn -query "CRISPR_1f.fna" -subject "combinedfna_file.fna" -task blastn -outfmt '6 std sseq' -perc_identity 100 > perfect_match.fna
wc -l perfect_match.fna


