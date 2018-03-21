#!/bin/sh

# generates mtp and commits map scans to github
# created by JarateKing

./generate_mtp.sh
git add raw.txt
git add ../../cfg/mtp.cfg
git commit -m "added maps from scan"