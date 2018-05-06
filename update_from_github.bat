:: Originally made by Rhapsody
:: Modified by JarateKing

@echo off
SET "current_folder=%cd%"
SET "repo_name=jarconfig-master"
TITLE Downloading Files from Github

:: backup files to preserve
move "%current_folder%\cfg\custom.cfg" "%current_folder%"
move "%current_folder%\cfg\scout.cfg" "%current_folder%"
move "%current_folder%\cfg\soldier.cfg" "%current_folder%"
move "%current_folder%\cfg\pyro.cfg" "%current_folder%"
move "%current_folder%\cfg\demoman.cfg" "%current_folder%"
move "%current_folder%\cfg\heavyweapons.cfg" "%current_folder%"
move "%current_folder%\cfg\pyro.cfg" "%current_folder%"
move "%current_folder%\cfg\medic.cfg" "%current_folder%"
move "%current_folder%\cfg\sniper.cfg" "%current_folder%"
move "%current_folder%\cfg\spy.cfg" "%current_folder%"
move "%current_folder%\cfg\scout_c.cfg" "%current_folder%"
move "%current_folder%\cfg\soldier_c.cfg" "%current_folder%"
move "%current_folder%\cfg\pyro_c.cfg" "%current_folder%"
move "%current_folder%\cfg\demoman_c.cfg" "%current_folder%"
move "%current_folder%\cfg\heavyweapons_c.cfg" "%current_folder%"
move "%current_folder%\cfg\pyro_c.cfg" "%current_folder%"
move "%current_folder%\cfg\medic_c.cfg" "%current_folder%"
move "%current_folder%\cfg\sniper_c.cfg" "%current_folder%"
move "%current_folder%\cfg\spy_c.cfg" "%current_folder%"
:: download zip from github
dev\wget.exe https://github.com/JarateKing/jarconfig/archive/master.zip --no-check-certificate
:: extract zip
dev\unzip.exe master.zip
:: move folders and files out of jarconfig-master
xcopy /SY "%repo_name%\*" "%current_folder%"
:: remove folders and files used in the process
rmdir /S /Q %repo_name%
del master.zip
:: return preserved files
move "%current_folder%\custom.cfg" "%current_folder%\cfg\"
move "%current_folder%\scout.cfg" "%current_folder%\cfg\"
move "%current_folder%\soldier.cfg" "%current_folder%\cfg\"
move "%current_folder%\pyro.cfg" "%current_folder%\cfg\"
move "%current_folder%\demoman.cfg" "%current_folder%\cfg\"
move "%current_folder%\heavyweapons.cfg" "%current_folder%\cfg\"
move "%current_folder%\pyro.cfg" "%current_folder%\cfg\"
move "%current_folder%\medic.cfg" "%current_folder%\cfg\"
move "%current_folder%\sniper.cfg" "%current_folder%\cfg\"
move "%current_folder%\spy.cfg" "%current_folder%\cfg\"
move "%current_folder%\scout_c.cfg" "%current_folder%\cfg\"
move "%current_folder%\soldier_c.cfg" "%current_folder%\cfg\"
move "%current_folder%\pyro_c.cfg" "%current_folder%\cfg\"
move "%current_folder%\demoman_c.cfg" "%current_folder%\cfg\"
move "%current_folder%\heavyweapons_c.cfg" "%current_folder%\cfg\"
move "%current_folder%\pyro_c.cfg" "%current_folder%\cfg\"
move "%current_folder%\medic_c.cfg" "%current_folder%\cfg\"
move "%current_folder%\sniper_c.cfg" "%current_folder%\cfg\"
move "%current_folder%\spy_c.cfg" "%current_folder%\cfg\"
pause