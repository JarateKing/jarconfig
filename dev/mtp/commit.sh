#!/bin/sh

./generate_mtp.sh
git add raw.txt
git add ../../cfg/mtp.cfg
git commit -m "added maps from scan"