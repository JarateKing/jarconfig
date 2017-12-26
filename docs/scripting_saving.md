# Saving

Normally, aliases are lost when the game closes. This can cause problems for some scripts, whether they deal with files or are settings that the user should only set once, which generally would need to work between game closes.

The method to make a script save things is with through console logging. By filtering text, it's possible to create a log file that matches scripting syntax and have that be executed. For example:

```
// needed for echoes
alias none ""

// commands to change log files
alias log_save "con_timestamp 0; con_logfile custom/jarconfig/cfg/save_cfg.txt"
alias log_def "con_timestamp 1; con_logfile console.log"

// value to save
alias value "value_1"
alias value_e "value_1_e"
alias value_1 "echo Option 1 selected"
alias value_1_e "echo alias value value_1; echo alias value_e value_1_e"
alias value_2 "echo Option 2 selected"
alias value_2_e "echo alias value value_2; echo alias value_e value_2_e"
alias value_3 "echo Option 3 selected"
alias value_3_e "echo alias value value_3; echo alias value_e value_3_e"

// let the user pick options
bind a "alias value value_1; alias value_e value_1_e; save_setting; value"
bind b "alias value value_2; alias value_e value_2_e; save_setting; value"
bind c "alias value value_3; alias value_e value_3_e; save_setting; value"

// command to preserve between game restarts
alias save_setting "log_save; value_e; log_def"

// run the saved file
exec save_cfg.txt
value
```

Something important to note with the above script is that logging appends to the file, but that's fine when we're just dealing with aliases. After changing settings 100 times, the save file will be 100 lines long, but aliases to the same command name will overwrite eachother so only the most recent alias is relevant. This can be a problem when saving actual commands and not just aliases, though.

Alternatively, you can also make sure something only ever happens once. For example, this script will make sure that run_once.cfg is only run one time, and restarting tf2 will not cause it to be run again.

```
// needed for echoes
alias none ""

// command to run once, needs to set itself to never run again
alias first_run "exec run_once.cfg; echo alias first_run none"

// run the saved file
// it will either be blank, or set first_run to none
exec save_cfg.txt

// set up logging to save
con_timestamp 0
con_logfile "custom/jarconfig/cfg/save_cfg.txt"
first_run
con_timestamp 1
con_logfile "console.log"
```
