#!/bin/bash

curl https://www.staff.hs-mittweida.de/~wuenschi/data/media/compbiolbook/annotation.tab > annotation.tab

awk -F'\t' '$3 ~ /(Purine|Pyrimidine) biosynthesis/' annotation.tab > result3.tab
echo -e "gene\tfunction\tmetabolism" > ah3.tab
cat result3.tab >> ah3.tab
cat ah3.tab

