# Conventions

## Scripting

For commands that take the form "command name argument" (which is the vast majority of commands in scripts) the name should never be enclosed in quotation marks, while the argument always should be.

The reason for this is consistency and readability. If the argument contains multiple commands, has semicolons inside it, or is blank, it needs to be enclosed in quotation marks in any case. Making all arguments always have quotation marks makes it clear what part is an argument without interfering with usability, whereas the alternatives both. Because the argument is always enclosed in quotation marks, it becomes more clear what part is the name when it isn't in quotation marks, so that is recommended. For example:

```
alias name "command"
alias name "echo hello world"
alias name "command1; command2"
alias name ""
```

For numerical cvars that take the form "command number" (which is the vast majority of commands in graphics cfgs) neither the command nor the number should be enclosed in quotes.

The reason for this is that the readability concerns are not as big as for commands like aliases. Instead, here we prefer no quotes because they add unnecessary bulk and make it look less clean. For example:

```
cl_interp 0
cl_interp_ratio 1
cl_cmdrate 66
cl_updaterate 66
```

When execing files, specifying the filetype is optional (and relevant when execing .txt files) but otherwise tf2 will assume it's a .cfg file. For cleanliness, when dealing with cfg files, it's recommended to not include the .cfg file extension. For example:

```
exec autoexec
exec options/main
```