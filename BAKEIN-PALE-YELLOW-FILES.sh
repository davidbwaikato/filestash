#!/bin/bash

pale_blue_files=`find .assets client server -name "*.pale-blue"`

for f in $pale_blue_files ; do
    orig_f=${f%.pale-blue}
    echo "Creating pale-yellow version of $orig_f"
    cat $f | sed 's/9ad1ed/edcc9a/gi' > $orig_f
done
	 

