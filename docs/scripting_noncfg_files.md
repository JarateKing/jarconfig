# non-cfg files

Some files exist within tf2's cfg folder, but aren't cfgs themselves. Many are only used by listen servers.

## mapcycle_<name>.txt

A list of maps for a server to use when changing maps.

## motd_default.txt & motd_text_default.txt

The message a player sees when they enter a server.

## motd_entries.txt

Images and text to display on the main menu with the news button.

## mtp.cfg

List of map names to use pyrovision for.

## pure_server_full.txt & pure_server_minimal.txt

Whitelists for a server when using sv_pure.

## server_blacklist.txt

Servers that are blocked by the player.

## sfm_defaultanimationgroups.txt

Used by source filmmaker to add known animation groups when animating models.

## trusted_keys_base.txt

File used by a server to list valid sources of vpk's under sv_pure 1. By default it includes valve as a valid source. Adding other public keys to it would allow vpk's from those sources to allow their vpk's on sv_pure 1.