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
:: move custom.cfg out of jarconfig-master
move "jarconfig-master\cfg\custom.cfg" "cfg"
:: remove folders and files used in the process
rmdir /S /Q %repo_name%
del master