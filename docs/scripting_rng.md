# RNG

In many scripts, having a random factor to it is very important. That said, achieving a true random number generator is very difficult within tf2.

Generally, the convention is to create a large cycle. For example:

```
alias rand0 "alias rand rand1; rand_yes"
alias rand1 "alias rand rand2; rand_no"
alias rand2 "alias rand rand3; rand_yes"
alias rand3 "alias rand rand4; rand_no"
alias rand4 "alias rand rand5; rand_yes"
alias rand5 "alias rand rand6; rand_no"
alias rand6 "alias rand rand7; rand_yes"
alias rand7 "alias rand rand8; rand_no"
alias rand8 "alias rand rand9; rand_yes"
alias rand9 "alias rand rand0; rand_no"

alias rand_yes "echo true"
alias rand_no "echo false"

alias rand rand0
```