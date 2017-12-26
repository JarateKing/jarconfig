# Console dropdown

By default, any aliases you create won't show up in the console auto-complete dropdown menu. Custom cvars, created with the setinfo command, do appear in the dropdown menu.

By using setinfo, we can get an alias to appear in the dropdown menu as if it were a stock-tf2 command, like so:

```
// alias to use
alias print_words "echo words"

// make it appear in the dropdown menu
setinfo print_words ""
```

If a command should have a description with it, setinfo's second argument also appears in the dropdown menu and that could be used, like so:

```
// alias to use
alias print_words "echo words"

// make it appear in the dropdown menu, with a description
setinfo print_words "   prints out words to console"
```