# addition

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