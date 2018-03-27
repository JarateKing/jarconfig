#!/bin/sh

# generates mtp and commits map scans to github
# created by JarateKing

# create map
./generate_mtp.sh
# add files to new commit
git add raw.txt
git add ../../cfg/mtp.cfg
# commit changes
git commit -m "added maps from scan"