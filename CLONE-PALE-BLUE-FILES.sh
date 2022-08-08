#!/bin/bash

pale_blue_files=`fgrep -ril 9ad1ed .assets client server | grep -v pale-blue`

for f in $pale_blue_files ; do
    if [ ! -f "$f.pale-blue" ] ; then
	echo "Creating pale-blue clone: $f.pale-blue"
	/bin/cp $f $f.pale-blue
    else
	echo "Skipping as $f.pale-blue already exists"
    fi
done

