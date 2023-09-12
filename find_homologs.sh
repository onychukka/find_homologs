#!/usr/bin/bash

tblastn -query "HK_domain.faa" -subject "Vibrio_cholerae_N16961.fna" -task tblastn -outfmt '6 std qlen' | awk '$3 > 30  && $4 > 0.9*$13' >> hits_Vibrio_cholerae_N16961.fna
wc -l hits_Vibrio_cholerae_N16961.fna
#head hits_Vibrio_cholerae_N16961.fna


