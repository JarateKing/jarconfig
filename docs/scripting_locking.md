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

## Notes

The most common uses for this are to prevent servers from running potentially malicious commands, and if a mod requires certain commands to run.

These last as long as the game is running, and can only be undone by restarting the game.

As well, locking the alias command prevents locking anything else, and must be the last thing locked.