#!/bin/bash
# Author: Karel Ha mathemage@gmail.com
# Script: csvtotab.sh
# Desc: substitute the commas in the files with tabs 
# saves the output into a .tsv file
# Arguments: 1 -> comma delimited file
# Date: Oct 2018

TSVFILE=$(basename "$1" ".csv").tsv

echo "Creating a tab delimited version of $1 and saving into $TSVFILE..."
cat $1 | tr -s "," "\t" >> $TSVFILE
echo "Done!"
exit
