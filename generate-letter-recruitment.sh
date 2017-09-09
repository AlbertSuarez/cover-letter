#!/bin/bash
POSITION="$1"

cp cover-letter-recruitment.tex aux1.tex
sed -i "s/Biene meme generator/$POSITION/g" aux1.tex
pdflatex aux1.tex
rm aux1.tex
rm aux1.aux
rm aux1.log
rm aux1.out
mv aux1.pdf cover-letters/"Albert Suarez cover letter - $POSITION.pdf"
