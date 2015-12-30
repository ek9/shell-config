#!/bin/sh
## pdf-repair.sh
# Uses ghostscript to repair damaged PDF files
# Based on: https://superuser.com/questions/278562/how-can-i-fix-repair-a-corrupted-pdf-file

FILE=$1

if [ -z $1 ]; then
    echo "pdf-repair: Please pass filename as an argument"
    exit 1
fi

gs \
  -o $FILE.repaired.pdf \
  -sDEVICE=pdfwrite \
  -dPDFSETTINGS=/prepress \
   $FILE
