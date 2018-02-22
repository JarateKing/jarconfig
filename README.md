# jarconfig

A scripting suite for tf2 designed to provide many common scripts and functions in a unified environment. Unlike graphics cfgs or player cfgs, jarconfig provides new commands and functions to use and integrates many different features into scripts.

## Install Instructions

### Standard Install

Install jarconfig directly into the custom folder. This is the easiest and cleanest way.

1. Download zip file
2. Extract to tf2's custom folder
3. Customize custom.cfg to suit your needs

### Cfg folder install

Install jarconfig into the cfg folder and avoiding the custom folder. This can help with load times, but can be harder to maintain.

1. Download zip file
2. Make a backup of tf2's cfg folder
3. Copy the contents of the zip file's cfg folder into tf2's cfg folder
4. Customize custom.cfg to suit your needs

### Customizing custom.cfg

Custom.cfg contains the core of jarconfig, options for its scripts, an example setup, and space for custom options. It's recommended to put your own settings here, though you can exec another cfg that holds your own settings if you'd like.

It's not recommended to copy over your autoexec completely, since it may include binds or settings that would cause unpredictable problems with jarconfig. Instead, it's recommended to recreate your autoexec using your old one as a reference. This way you can make sure that you're getting full usage of jarconfig.

### Updating & Reseting

Batch and shell files are included that make updating and reseting easy. As a warning, these files should not be moved outside of their default location.

#### update_from_github.bat/.sh

This redownloads everything from github, keeping only custom.cfg.

#### reset_custom.bat/.sh

This redownloads custom.cfg and replaces it. This is for when you would like to return custom.cfg to its original form. Note that running this when being a few updates too old can cause issues, and it's recommended to update along with this.