# Dev tools

These are programs and tools used by jarconfig to enable more functionality, or to ease development.

## Install programs

7z.exe and wget.exe are used by the batch files to update and reinstall. Linux has equivalent programs natively installed, so it does not require these .exe's.

## Mtp

The mtp folder contains bash and python scripts to update and maintain mtp.cfg. The user only needs to concern themselves with find_maps.py (which finds more maps, based off of what servers are running) and generate_mtp.sh (which generates mtp.cfg given the list). It is recommended to use linux for this.