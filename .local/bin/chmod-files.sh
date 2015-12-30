#!/bin/bash
## chmod-files.sh
# Find all files in current directory and chmods them according to provided
# argument
NEWMOD=$1

if [ -z $NEWMOD ]; then
    echo "chmod-files: Please provide an argument to chmod with (e.g. 664)"
    exit 1;
fi

find . -type f -exec chmod $NEWMOD {} \;

exit 0

