#!/bin/sh

# Originally made by Rhapsody
# Modified by JarateKing

# download zip from github
wget https://github.com/JarateKing/jarconfig/archive/master.zip --no-check-certificate
# extract zip
unzip master.zip
# move custom.cfg out of jarconfig-master
mv "./jarconfig-master/cfg/custom.cfg" "./cfg/custom.cfg"
# remove folders and files used in the process
rm -rf "./jarconfig-master"
rm -rf "./master.zip"