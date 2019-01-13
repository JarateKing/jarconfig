#!/bin/sh

# generated mtp.cfg based off of a raw list of maps
# created by JarateKing

# maps must be in `"mapname.bsp" "1"` format
# map list must be named raw.txt
# use find_maps.py to generate the map list
# find_maps.py should not be running when executing this
# raw.txt will be modified and overwritten by this

# create non-workshop versions
python ./generate_nonworkshop.py
# sort list
sort raw.txt > sorted.txt
# safety: remove duplicate lines
uniq sorted.txt > unique.txt
# safety: remove lines that don't contain bsp
grep -F 'bsp' unique.txt > mapsonly.txt
# safety: remove wokshop
grep -v -F 'workshop/' mapsonly.txt > noworkshop.txt
# create mtp.cfg
cat cat_start.txt noworkshop.txt cat_end.txt > "../../cfg/mtp.cfg"

# remove intermediaries
rm raw.txt
rm sorted.txt
rm unique.txt
rm noworkshop.txt
# make the output become the new map list
mv mapsonly.txt raw.txt