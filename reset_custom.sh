#!/bin/sh

# Originally made by Rhapsody
# Modified by JarateKing

# download zip from github
wget https://github.com/JarateKing/jarconfig/archive/master.zip --no-check-certificate
# extract zip
unzip master.zip
# move replaced cfg out of jarconfig-master
mv "./jarconfig-master/cfg/custom.cfg" "./cfg/custom.cfg"
mv "./jarconfig-master/cfg/scout.cfg" "./cfg/scout.cfg"
mv "./jarconfig-master/cfg/soldier.cfg" "./cfg/soldier.cfg"
mv "./jarconfig-master/cfg/pyro.cfg" "./cfg/pyro.cfg"
mv "./jarconfig-master/cfg/demoman.cfg" "./cfg/demoman.cfg"
mv "./jarconfig-master/cfg/heavyweapons.cfg" "./cfg/heavyweapons.cfg"
mv "./jarconfig-master/cfg/engineer.cfg" "./cfg/engineer.cfg"
mv "./jarconfig-master/cfg/medic.cfg" "./cfg/medic.cfg"
mv "./jarconfig-master/cfg/sniper.cfg" "./cfg/sniper.cfg"
mv "./jarconfig-master/cfg/spy.cfg" "./cfg/spy.cfg"
# remove folders and files used in the process
rm -rf "./jarconfig-master"
rm -rf "./master.zip"