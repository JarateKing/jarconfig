#!/bin/sh

# Originally made by Rhapsody
# Modified by JarateKing

# download zip from github
wget https://github.com/JarateKing/jarconfig/archive/master.zip --no-check-certificate
# extract zip
unzip master.zip
# move replaced cfg out of jarconfig-master
mv "./jarconfig-master/cfg/_settings.cfg" "./cfg/_settings.cfg"
mv "./jarconfig-master/cfg/scout.cfg" "./cfg/scout.cfg"
mv "./jarconfig-master/cfg/soldier.cfg" "./cfg/soldier.cfg"
mv "./jarconfig-master/cfg/pyro.cfg" "./cfg/pyro.cfg"
mv "./jarconfig-master/cfg/demoman.cfg" "./cfg/demoman.cfg"
mv "./jarconfig-master/cfg/heavyweapons.cfg" "./cfg/heavyweapons.cfg"
mv "./jarconfig-master/cfg/engineer.cfg" "./cfg/engineer.cfg"
mv "./jarconfig-master/cfg/medic.cfg" "./cfg/medic.cfg"
mv "./jarconfig-master/cfg/sniper.cfg" "./cfg/sniper.cfg"
mv "./jarconfig-master/cfg/spy.cfg" "./cfg/spy.cfg"
mv "./jarconfig-master/cfg/scout_c.cfg" "./cfg/scout_c.cfg"
mv "./jarconfig-master/cfg/soldier_c.cfg" "./cfg/soldier_c.cfg"
mv "./jarconfig-master/cfg/pyro_c.cfg" "./cfg/pyro_c.cfg"
mv "./jarconfig-master/cfg/demoman_c.cfg" "./cfg/demoman_c.cfg"
mv "./jarconfig-master/cfg/heavyweapons_c.cfg" "./cfg/heavyweapons_c.cfg"
mv "./jarconfig-master/cfg/engineer_c.cfg" "./cfg/engineer_c.cfg"
mv "./jarconfig-master/cfg/medic_c.cfg" "./cfg/medic_c.cfg"
mv "./jarconfig-master/cfg/sniper_c.cfg" "./cfg/sniper_c.cfg"
mv "./jarconfig-master/cfg/spy_c.cfg" "./cfg/spy_c.cfg"
# remove folders and files used in the process
rm -rf "./jarconfig-master"
rm -rf "./master.zip"