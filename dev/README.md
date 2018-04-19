# Dev tools

These are programs and tools used by jarconfig to enable more functionality, or to ease development. These might be of interest for developers, but are probably unimportant for your average user.

## Install programs

7z.exe and wget.exe are used by the batch files to update and reinstall. Linux has equivalent programs natively installed, so the sh versions of the files do not require these .exe's.

## Mtp

The mtp folder contains bash and python scripts to update and maintain mtp.cfg. The user only needs to concern themselves with find_maps.py (which finds more maps, based off of what servers are running) and generate_mtp.sh (which generates mtp.cfg given the list). The scripts assume that they are placed in /dev/mtp/ and that /cfg/mtp.cfg exists, so they should not be moved out of this location without editing the scripts themselves. It is recommended to use linux for this.

find_maps.py has the following commandline arguments associated with it:

| Flag | Argument | Function |
| ---- | -------- | -------- |
| -help | | Displays a help message |
| -file | filename | Use a file other than raw.txt |
| -noerror | | Do not display error messages |
| -nomaps | | Do not display map names |
| -silent | | Do not display anything |
| -count | | Show the map count |
