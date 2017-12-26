# Hardcoded cfg's

These are the cfg's that get automatically executed by tf2.

## valve.rc

This .rc file is executed by tf2 on startup. This also runs autoexec.cfg.

By convention, this is usually only modified by huds, so that they can run their own commands (even before autoexec.cfg), since it makes installation easier assuming no other mods attempt to modify valve.rc also.

## autoexec.cfg

This .cfg file is executed as a part of valve.rc. This is where most users put their settings.

## class configs

These cfg files execute whenever a class starts being played. They are named as follows:

* demoman.cfg
* engineer.cfg
* heavyweapons.cfg
* medic.cfg
* pyro.cfg
* scout.cfg
* sniper.cfg
* soldier.cfg
* spy.cfg

## map configs

A map config will get executed by the server whenever that map starts being run. In the client's case, this will be whenever they start a listen server. It should have the same filename as the map, except with the file extention changed from .bsp to .cfg.