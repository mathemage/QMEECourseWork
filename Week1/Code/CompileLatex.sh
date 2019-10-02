#!/bin/bash
BASENAME=$(basename "$1" .tex)
pdflatex $BASENAME.tex
pdflatex $BASENAME.tex
bibtex $BASENAME
pdflatex $BASENAME.tex
pdflatex $BASENAME.tex
evince $BASENAME.pdf &

## Cleanup
rm *~
rm *.aux
rm *.dvi
rm *.log
rm *.nav
rm *.out
rm *.snm
rm *.toc
