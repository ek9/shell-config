#!/bin/bash

if [ -z $1 ]; then
	echo "Please provide target directory as an argument"
	exit 1
fi

rsync -aAXv --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} --delete /* $1
