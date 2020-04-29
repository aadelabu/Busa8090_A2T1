#!/bin/bash

curl https://www.staff.hs-mittweida.de/~wuenschi/data/media/compbiolbook/annotation.tab > annotation.tab
echo -e "gene\tfunction\tmetabolism" > ah.tab
cat annotation.tab >> ah.tab
head -n -1 ah.tab > ah1.tab

awk -F'\t' '$2 ~ /ase/' ah1.tab > result_nh.tab
echo -e "gene\tfunction\tmetabolism" > ah2.tab
cat result_nh.tab >> ah2.tab
cat ah2.tab

