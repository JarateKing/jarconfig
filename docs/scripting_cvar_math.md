# Cvar math

Some basic operations can be performed on the values stored by cvars.

Obviously, this will only work well if the value stored in that cvar is a number. Otherwise, attempting math on them will treat them as if their value was 0 originally, and continue from there.

## addition

Addition can be performed with the incrementvar command. It takes the form of:

```
incrementvar cvar min max delta
```

After adding the delta to the cvar, it checks if it's smaller than min or bigger than max. If it is, it clamps it and sets it to the min / max.

Min, max, and delta can be any real number. For example, these are all valid:

```
incrementvar fov_desired 75 90 -10
incrementvar fov_desired 75 90 0.5
incrementvar sv_cheats 0 1 1
```

One use of addition is when a script wants to enable a cvar, do something, and then return to the previous value. For example:

```
// bad script, sv_cheats will always be on after
alias cheat_1 "sv_cheats 1; addcond 3"

// also bad script, sv_cheats will always be off after
alias cheat_2 "sv_cheats 1; addcond 3; wait 5; sv_cheats 0"

// good script, sv_cheats will be the right value after
alias cheat_2 "incrementvar sv_cheats -1 2 1; addcond 3; wait 5; incrementvar sv_cheats -1 2 -1"

## multiplication

Similar to addition, multiplication can be performed with the multvar command. It takes the form:

```
incrementvar cvar min max factor
```

Similarly, min and max clamp the values, and all three min, max, and factor can be any real number.

## inverting a value

If a cvar's logical inversion is just the negative version, inverting it is easy. For example:

```
multvar sensitivity -100 100 -1
```

More often a cvar's valid range is between 0 and some other value, so simply multiplying by -1 won't be enough. For example, to invert the crosshair's color (which uses three cvars for each color channel, each 0-255):

```
multvar cl_crosshair_red -255 255 -1; incrementvar cl_crosshair_red -255 255 255
multvar cl_crosshair_green -255 255 -1; incrementvar cl_crosshair_green -255 255 255
multvar cl_crosshair_blue -255 255 -1; incrementvar cl_crosshair_blue -255 255 255
```

## Notes

* Negative 0 is a valid number.

* While setting a command can preserve as many significant figures as the input had, incrementvar and multvar only preserve 6 digits after the decimal point.

* Multiplying cvars with decimals with large numbers may result in odd decimal numbers appearing. For most cvars, this won't cause any significant loss of accuracy.