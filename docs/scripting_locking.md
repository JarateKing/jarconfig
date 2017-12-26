# Locking

Locking is a simple scripting technique that prevents commands from being run or cvars from being changed.

Locking is implemented by creating an alias with the same name as the command or cvar. This overrides it to do nothing. For example:

```
// prevent killbinds
alias kill ""
alias explode ""

// prevent changing fov
alias fov_desired ""
```