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
mv "./cfg/scout_c.cfg" "./scout_c.cfg"
mv "./cfg/soldier_c.cfg" "./soldier_c.cfg"
mv "./cfg/pyro_c.cfg" "./pyro_c.cfg"
mv "./cfg/demoman_c.cfg" "./demoman_c.cfg"
mv "./cfg/heavyweapons_c.cfg" "./heavyweapons_c.cfg"
mv "./cfg/engineer_c.cfg" "./engineer_c.cfg"
mv "./cfg/medic_c.cfg" "./medic_c.cfg"
mv "./cfg/sniper_c.cfg" "./sniper_c.cfg"
mv "./cfg/spy_c.cfg" "./spy_c.cfg"
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
mv "./scout_c.cfg" "./cfg/scout_c.cfg"
mv "./soldier_c.cfg" "./cfg/soldier_c.cfg"
mv "./pyro_c.cfg" "./cfg/pyro_c.cfg"
mv "./demoman_c.cfg" "./cfg/demoman_c.cfg"
mv "./heavyweapons_c.cfg" "./cfg/heavyweapons_c.cfg"
mv "./engineer_c.cfg" "./cfg/engineer_c.cfg"
mv "./medic_c.cfg" "./cfg/medic_c.cfg"
mv "./sniper_c.cfg" "./cfg/sniper_c.cfg"
mv "./spy_c.cfg" "./cfg/spy_c.cfg"
