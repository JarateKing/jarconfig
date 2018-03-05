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
:: download zip from github
dev\wget.exe https://github.com/JarateKing/jarconfig/archive/master.zip --no-check-certificate
:: extract zip
dev\7z.exe x master -y
:: move folders and files out of jarconfig-master
for /D %%A in ("%repo_name%\*") do move /Y "%%~A" "%current_folder%"
for /F %%A in ("%repo_name%\*") do move /Y "%%~A" "%current_folder%"
:: remove folders and files used in the process
rmdir /S /Q %repo_name%
del master
:: return preserved files
move "%current_folder%\custom.cfg" "%current_folder%\cfg\"
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
