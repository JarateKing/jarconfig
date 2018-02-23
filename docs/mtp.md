# mtp.cfg

Map whitelist for pyrovision. Maps can be added to this cfg to allow more maps to see the effects of pyrovision. Any map, including custom maps, can be added to this cfg file.

The mtp.cfg within jarconfig tries to contain every map. This may cause issues or visual bugs on certain maps.

## Default

```
"VisionFilterShadersMapWhitelist"
{
	"arena_badlands.bsp"	"1"
	"ctf_2fort.bsp"		"1"
	"cp_badlands.bsp"	"1"
	"cp_dustbowl.bsp"	"1"
	"cp_gravelpit.bsp"	"1"
	"koth_badlands.bsp"	"1"
	"koth_viaduct.bsp"	"1"
	"plr_hightower.bsp"	"1"
	"pl_badwater.bsp"	"1"
	"pl_goldrush.bsp"	"1"
	"sd_doomsday.bsp"	"1"
}
```

## Blank

```
"VisionFilterShadersMapWhitelist"
{
}
```

## jarconfig tools

Jarconfig includes a python script to generate a list of maps, and a shell script to turn that list of maps into a proper and well-formatted mtp.cfg. These are intended to be used on linux.

The python script checks what maps servers are running, and if it doesn't exist in the pre-existing list, it gets added to the file. As servers go up / down, and change maps fairly frequently, it repeats this until the script is stopped.

The shell script sorts the list, removes duplicate or erroneous lines, and updates mtp.cfg to use the added maps.