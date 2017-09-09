#!/bin/bash
NAME="$1"
ADDRESS="$2"
POSITION="$3"

cp cover-letter-company.tex aux1.tex
sed -i "s/Biene Company/$NAME/g" aux1.tex
sed -i "s/Bienilandia/$ADDRESS/g" aux1.tex
sed -i "s/Biene meme generator/$POSITION/g" aux1.tex
pdflatex aux1.tex
rm aux1.tex
rm aux1.aux
rm aux1.log
rm aux1.out
mv aux1.pdf cover-letters/"Albert Suarez cover letter - $NAME - $POSITION.pdf"
