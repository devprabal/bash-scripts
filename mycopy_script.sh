#!/bin/bash
# A simple copy script
cp $1 $2
# $1, $2, ...The first, second, etc command line arguments to the script.
# $0 The name of the bashscript file
# Let's verify the copy worked
echo Details for $2

# the variables $1 to represent the first command line argument, $2 to represent the second command line argument and so on. These are automatically set by the system when we run our script so all we need to do is refer to them.

ls -lh $2
 
#After the copy has completed, run the command ls for the destination just to verify it worked. We have included the options l to show us extra information and h to make the size human readable so we may verify it copied correctly.
