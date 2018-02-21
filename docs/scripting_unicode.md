# Unicode

Unicode can be included inside scripts. In a cfg, this requires the file encoding to allow for unicode.

In notepad++, select the option UTF-8 (without BOM). This allows for scripts such as:
```
echo "👌"
```
Though it's unlikely that the font is supported in the console, in this case.

If the BOM were included, TF2 would try to parse the BOM as a character. If the top line has any commands, this will cause that line to not get parsed properly. If the top line of the file is either empty or a comment, the script will function properly, but will output a missing command error when the file is exec'd.
