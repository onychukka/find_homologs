#!/usr/bin/bash

tblastn -query "HK_domain.faa" -subject "Pseudomonas_aeruginosa_UCBPP-PA14.fna" -task tblastn -outfmt '6 std qlen' | awk '$3 > 30  && $4 > 0.9*$13' >> hits_Pseudomonas_aeruginosa_UCBPP-PA14.fna
wc -l hits_Pseudomonas_aeruginosa_UCBPP-PA14.fna
#head hits_Pseudomonas_aeruginosa_UCBPP-PA14.fna

