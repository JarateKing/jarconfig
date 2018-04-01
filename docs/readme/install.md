# Install Instructions

## Standard Install

Install jarconfig directly into the custom folder. This is the easiest and cleanest way.

1. Download zip file
2. Extract to tf2's custom folder
3. Customize custom.cfg to suit your needs

## Cfg folder Install

Install jarconfig into the cfg folder and avoiding the custom folder. This can help with load times, but can be harder to maintain.

1. Download zip file
2. Make a backup of tf2's cfg folder
3. Copy the contents of the zip file's cfg folder into tf2's cfg folder
4. Customize custom.cfg to suit your needs

## Customizing custom.cfg

Custom.cfg contains the core of jarconfig, options for its scripts, an example setup, and space for custom options. It's recommended to put your own settings here, though you can exec another cfg that holds your own settings if you'd like.

It's not recommended to copy over your autoexec completely, since it may include binds or settings that would cause unpredictable problems with jarconfig. Instead, it's recommended to recreate your autoexec using your old one as a reference. This way you can make sure that you're getting full usage of jarconfig.

## Installing with Mastercoms' Mastercomfig.

Jarconfig supports relatively simple integration with mastercomfig. It can be found [here](https://github.com/mastercoms/mastercomfig).

1. Install mastercomfig as its instructions say, using any method.
2. If mastercomfig was installed using the folders method, edit its autoexec.cfg to exec custom.cfg (this should be near the bottom of autoexec.cfg). If installed using vpk's, you don't have to do this step.
3. Install jarconfig using the standard install method.
4. Inside jarconfig, remove autoexec.cfg, the class cfg's, and listenserver.cfg. Keep the class_c cfg's and listenserver_c.cfg though. 
