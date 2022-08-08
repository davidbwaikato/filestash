#!/bin/bash

pale_blue_files=`find .assets client server -name "*.pale-blue"`

# pbf = pale-blue-file

for pbf in $pale_blue_files ; do
    orig_f=${pbf%.pale-blue}
    echo "Reverting back to pale-blue for $orig_f"
    /bin/cp $pbf $orig_f
done
	 
