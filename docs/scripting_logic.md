# Conditionals

Source scripting has no if statements, which are a basic backbone of most programming and scripting languages. This makes a lot of people confused and have no clue how to do anything advanced within tf2 scripts. Which is completely fair, since not using if statements is not intuitive in the slightest.

Conditional logic can be done, however. Changing aliases allows for conditional logic (and in fact, is turing complete) with some effort. For example:

```
// set up the boolean variable with a default value
alias print_bool "print_true"

// set up each state it could be in, and its results
alias print_true "echo true"
alias print_false "echo false"

// input to change the variable
bind a "alias print_bool print_true"
bind b "alias print_bool print_false"

// do whatever the variable's state does
print_bool
```

If you want to see this in action, consider the famous null-canceling movement script. It is condensed, but it does the same with its checkfwd/back/left/right variables. Whenever you first press a direction, it changes the check variable to also go in that direction (because that's what will be needed later). When you release a direction, it runs the check command opposite to it (which is either blank, or to move in that direction) and sets its own check variable back to none.

```
alias none ""

alias +mfwd "-back;+forward;alias checkfwd +forward"
alias +mback "-forward;+back;alias checkback +back"
alias +mleft "-moveright;+moveleft;alias checkleft +moveleft"
alias +mright "-moveleft;+moveright;alias checkright +moveright"

alias -mfwd "-forward;checkback;alias checkfwd none"
alias -mback "-back;checkfwd;alias checkback none"
alias -mleft "-moveleft;checkright;alias checkleft none"
alias -mright "-moveright;checkleft;alias checkright none"

alias checkfwd none
alias checkback none
alias checkleft none
alias checkright none
```

An alternative way of implementing this, with more overhead but so that it works better when we need to use the same boolean variable, would be something like:

```
// set up true and false states that do nothing by default
alias none ""
alias true "none"
alias false "none"

// set up the boolean variable with a default value
alias print_bool "true"

// input to change the variable
bind a "alias print_bool true"
bind b "alias print_bool false"

// evaluate
alias true "echo true"
alias false "echo false"
print_bool
alias true "none"
alias false "none"

// evaluate another time with different outputs
alias true "echo 1"
alias false "echo 0"
print_bool
alias true "none"
alias false "none"
```

# Variables

Similar to conditionals, there are no readily available data types to use within scripting (cvars do store values like variables should, but they aren't easily accessible within a script to use). However, many data types can be implemented through aliases.

## Booleans

As seen above, boolean variables can be implemented with relative ease.

```
alias none ""

alias bool_var "true"

// evaluate
alias true "echo var is true"
alias false "echo var is false"
bool_var
```