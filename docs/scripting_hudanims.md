# Hud animations

Some hud animations can be triggered through scripting.

## MenuOpen & MenuClose

The MenuOpen and MenuClose animations can be triggered by immediately opening and closing the voice command menu. For example:

```
alias menuopen "voice_menu_1; slot10"
```

Because the MenuOpen and MenuClose animations are still used within tf2 normally, it's only recommended to use this with animations you want all the time. Good examples of this would be things done with animation locking, such as setting the chat bg to blank or removing the scope.