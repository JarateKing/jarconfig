#!/bin/sh

# generated mtp.cfg based off of a raw list of maps
# maps must be in `"mapname.bsp" "1"` format
# created by JarateKing

# create non-workshop versions
python ./generate_nonworkshop.py
# sort list
sort raw.txt > sorted.txt
# safety: remove duplicate lines
uniq sorted.txt > unique.txt
# safety: remove lines that don't contain bsp
grep -F 'bsp' unique.txt > mapsonly.txt
# create mtp.cfg
cat cat_start.txt mapsonly.txt cat_end.txt > "../../cfg/mtp.cfg"

# remove intermediaries
rm raw.txt
rm sorted.txt
rm unique.txt
# make the output become the new base
mv mapsonly.txt raw.txt