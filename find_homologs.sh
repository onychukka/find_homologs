#!/usr/bin/bash

tblastn -query "HK_domain.faa" -subject "Escherichia_coli_K12.fna" -task tblastn -outfmt '6 std qlen' | awk '$3 > 30  && $4 > 0.9*$13' >> hits_Escherichia_coli_K12.fna
wc -l hits_Escherichia_coli_K12.fna
#head hits_Escherichia_coli_K12.fna

