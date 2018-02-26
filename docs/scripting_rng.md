# RNG

In many scripts, having a random factor to it is very important. That said, achieving a true random number generator is very difficult within tf2.

Generally, the convention is to create a large cycle. For example:

```
alias rand_mod0 "alias rand_mod rand_mod1; alias rand rand_yes"
alias rand_mod1 "alias rand_mod rand_mod2; alias rand rand_no"
alias rand_mod2 "alias rand_mod rand_mod3; alias rand rand_yes"
alias rand_mod3 "alias rand_mod rand_mod4; alias rand rand_no"
alias rand_mod4 "alias rand_mod rand_mod5; alias rand rand_yes"
alias rand_mod5 "alias rand_mod rand_mod6; alias rand rand_no"
alias rand_mod6 "alias rand_mod rand_mod7; alias rand rand_yes"
alias rand_mod7 "alias rand_mod rand_mod8; alias rand rand_no"
alias rand_mod8 "alias rand_mod rand_mod9; alias rand rand_yes"
alias rand_mod9 "alias rand_mod rand_mod0; alias rand rand_no"

alias rand_yes "rand_mod; echo true"
alias rand_no "rand_mod; echo false"

alias rand_mod rand_mod0
rand_mod
```

This example as it is will only cycle between yes and no. To further improve it, rand_mod should be added to common binds like movement keys.