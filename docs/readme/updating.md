# Automatic Updating & Reseting

Batch and shell files are included that make updating and reseting easy. As a warning, these files should not be moved outside of their default location.

## update_from_github.bat/.sh

This redownloads everything from github, keeping only custom.cfg and class cfg's.

## reset_custom.bat/.sh

This redownloads custom.cfg and class cfg's and replaces them. This is for when you would like to return custom.cfg to its original form. Note that running this when being a few updates too old can cause issues, and it's recommended to update the full jarconfig along with this.

# Manual Updating and Reseting

Updating and reseting can also be done manually.

## Updating

1. Make a backup copy of custom.cfg and the class cfg's.
2. Download jarconfig from github.
3. Replace the old jarconfig with the freshly downloaded one.
4. Move the backup copies of custom.cfg and the class cfg's back into jarconfig.

## Reseting

1. Download jarconfig from github.
2. Replace custom.cfg and class cfg's with those from github
