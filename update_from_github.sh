#!/bin/sh

# Originally made by Rhapsody
# Modified by JarateKing

# backup files to preserve
mv "./cfg/custom.cfg" "./custom.cfg"
mv "./cfg/scout.cfg" "./scout.cfg"
mv "./cfg/soldier.cfg" "./soldier.cfg"
mv "./cfg/pyro.cfg" "./pyro.cfg"
mv "./cfg/demoman.cfg" "./demoman.cfg"
mv "./cfg/heavyweapons.cfg" "./heavyweapons.cfg"
mv "./cfg/engineer.cfg" "./engineer.cfg"
mv "./cfg/medic.cfg" "./medic.cfg"
mv "./cfg/sniper.cfg" "./sniper.cfg"
mv "./cfg/spy.cfg" "./spy.cfg"
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
mv "./scout.cfg" "./cfg/scout.cfg"
mv "./soldier.cfg" "./cfg/soldier.cfg"
mv "./pyro.cfg" "./cfg/pyro.cfg"
mv "./demoman.cfg" "./cfg/demoman.cfg"
mv "./heavyweapons.cfg" "./cfg/heavyweapons.cfg"
mv "./engineer.cfg" "./cfg/engineer.cfg"
mv "./medic.cfg" "./cfg/medic.cfg"
mv "./sniper.cfg" "./cfg/sniper.cfg"
mv "./spy.cfg" "./cfg/spy.cfg"
