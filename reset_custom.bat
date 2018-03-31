:: Originally made by Rhapsody
:: Modified by JarateKing

@echo off
SET "current_folder=%cd%"
SET "repo_name=jarconfig-master"
TITLE Downloading Files from Github

:: download zip from github
dev\wget.exe https://github.com/JarateKing/jarconfig/archive/master.zip --no-check-certificate
:: extract zip
dev\7z.exe x master -y
:: move replaced cfgs out of jarconfig-master
move "jarconfig-master\cfg\custom.cfg" "cfg"
move "jarconfig-master\cfg\scout.cfg" "cfg"
move "jarconfig-master\cfg\soldier.cfg" "cfg"
move "jarconfig-master\cfg\pyro.cfg" "cfg"
move "jarconfig-master\cfg\demoman.cfg" "cfg"
move "jarconfig-master\cfg\heavyweapons.cfg" "cfg"
move "jarconfig-master\cfg\engineer.cfg" "cfg"
move "jarconfig-master\cfg\medic.cfg" "cfg"
move "jarconfig-master\cfg\sniper.cfg" "cfg"
move "jarconfig-master\cfg\spy.cfg" "cfg"
move "jarconfig-master\cfg\scout_c.cfg" "cfg"
move "jarconfig-master\cfg\soldier_c.cfg" "cfg"
move "jarconfig-master\cfg\pyro_c.cfg" "cfg"
move "jarconfig-master\cfg\demoman_c.cfg" "cfg"
move "jarconfig-master\cfg\heavyweapons_c.cfg" "cfg"
move "jarconfig-master\cfg\engineer_c.cfg" "cfg"
move "jarconfig-master\cfg\medic_c.cfg" "cfg"
move "jarconfig-master\cfg\sniper_c.cfg" "cfg"
move "jarconfig-master\cfg\spy_c.cfg" "cfg"
:: remove folders and files used in the process
rmdir /S /Q %repo_name%
del master