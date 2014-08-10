#!/bin/sh

# This is a .csv file coding sessionXsequence variations that will affect some
# afni_proc arguments:
apInputs="./acquisitionCharacterics/varyingAfniprocInputs.csv"
ls -al $apInputs

# We need afni_proc to create a ~300-line proc file for each sessionXtask line
# of the $apInputs file.  This while loop parses the lines of the $apInputs file to
# create the appropriate afni_proc arguments for each sessionXtask row.
# (The "sed 1d" skips the first line of the file, which is just a header line.

sed 1d $apInputs | while IFS="," read blind task sliceOrder; do
   #echo "blind=${blind}"
   #echo "task=${task}"
   #echo "sliceOrder=${sliceOrder}"
done
