#!/bin/bash

pale_blue_files=`find .assets client server -name "*.pale-blue"`

# pbf = pale-blue-file

for pbf in $pale_blue_files ; do
    orig_f=${pbf%.pale-blue}
    echo "Creating pale-green version of $orig_f"
    cat $pbf | sed 's/9ad1ed/a9ed9a/gi' > $orig_f
done
	 
