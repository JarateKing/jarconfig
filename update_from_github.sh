#!/bin/sh

# Originally made by Rhapsody
# Modified by JarateKing

# backup files to preserve
mv "./cfg/custom.cfg" "./custom.cfg"
# download zip from github
wget https://github.com/JarateKing/jarconfig/archive/master.zip --no-check-certificate
# extract zip
unzip master.zip
# move folders and files out of jarconfig-master
cp -rf "./jarconfig-master/." "."
# remove folders and files used in the process
rm -rf "./jarconfig-master"
rm -rf "./master.zip" 
# return preserved files
mv "./custom.cfg" "./cfg/custom.cfg"
