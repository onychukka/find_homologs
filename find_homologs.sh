#!/usr/bin/bash

tblastn -query "HK_domain.faa" -subject "Wolbachia.fna" -task tblastn -outfmt '6 std qlen' | awk '$3 > 30  && $4 > 0.9*$13' >> hits_Wolbachia.fna
wc -l hits_Wolbachia.fna
#head hits_Wolbachia.fna



