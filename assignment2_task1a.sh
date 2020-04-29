#!/bin/bash

curl https://www.staff.hs-mittweida.de/~wuenschi/data/media/compbiolbook/expression.tab > expression.tab
echo -e "gene\texpression level" > eh.tab
cat expression.tab >> eh.tab
cat eh.tab
head -n -1 eh.tab > eh1.tab

awk 'int($2) < 1000' eh1.tab
# answer
#gene    expression level
#alr4392 729
#alr4851 633
