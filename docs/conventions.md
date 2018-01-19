# Conventions

## Scripting

For commands that take the form "command name argument" (which is the vast majority of commands in scripts) it the name should never be enclosed in quotation marks, while the argument always should be.

The reason for this is consistency and readability. If the argument contains multiple commands, or has semicolons inside it, or is blank, it needs to be enclosed in quotation marks in any case. Making all arguments always have quotation marks makes it clear what part is an argument without interfering with usability, whereas the alternatives both. Because the argument is always enclosed in quotation marks, it becomes more clear what part is the name when it isn't in quotation marks, so that is recommended. For example:

```
alias name "command"
alias name "echo hello world"
alias name "command1; command2"
alias name ""
```