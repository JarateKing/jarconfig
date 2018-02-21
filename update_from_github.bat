:: Originally made by Rhapsody
:: Modified by JarateKing

@echo off
SET "current_folder=%cd%"
SET "repo_name=jarconfig-master"
TITLE Downloading Files from Github

:: backup files to preserve
move "%current_folder%\cfg\custom.cfg" "%current_folder%"
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