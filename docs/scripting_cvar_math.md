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

One use of addition is when a script wants to enable a cvar, do something, and then return to the previous value. For example:

```
// bad script, sv_cheats will always be on after
alias cheat_1 "sv_cheats 1; addcond 3"

// also bad script, sv_cheats will always be off after
alias cheat_2 "sv_cheats 1; addcond 3; wait 5; sv_cheats 0"

// good script, sv_cheats will be the right value after
alias cheat_2 "incrementvar sv_cheats -1 2 1; addcond 3; wait 5; incrementvar sv_cheats -1 2 -1"