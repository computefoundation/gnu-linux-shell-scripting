
<img src='https://raw.githubusercontent.com/unix-base/home/images/linux-shell-base_logo.png' width='32.2%' align='left' alt='linux-shell-base_logo.png'>
<br><br><br><br>

**Linux-shell-base** is a resource of UNIX-based solutions for the  
GNU/Linux shell.
<br><br><br><br><br>

# Application layer paradigms

Linux-shell-base provides solutions for the following application layer paradigms:

## Applications

Solutions for applications

* [RDBMS functions for MySQL](functions_scripts/applications/databases/mysqlutils)
* [NoSQL functions for MongoDB](functions_scripts/applications/databases/mongodbutils)

## Programming languages

Solutions for programming languages

* [Bash array utilities](functions_scripts/programming_languages/bash/arrayutils.bash)
* [Bash date and time utilities](functions_scripts/programming_languages/bash/dateandtimeutils.bash)

## GNU/Linux

Solutions for foundational concepts of the GNU/Linux operating system *(e.g. operating system tools, file, system and window management)*, based on four *super* sections:

#### 1. Main (actions with or without output)

* [Rename all files matching a name recursively.](scripts/linux-without_output/file_management/renrec)

#### 2. Output only - single-value (single-value output and no actions)

* [Get the size of one or more files and/or directories as a plain number.](https://github.com/linux-shell-base/linux-shell-base/blob/master/one-liners/one-liners-linux-output_only-single-value.bash)
* [Get the ID of a window by PID.](scripts/linux-output_only-single-value/x11/getwindidbypid)

#### 3. Output only - multi-value (multi-value output and no actions)

* [Recursively find and list one or more files.](aliases/aliases-linux-output_only-multi-value.bash)
* [List all open TCP and UDP ports.](aliases/aliases-linux-output_only-multi-value.bash)

#### 4. Modules (used in conjuction with command-line programs)

* [Run a command in the background.](scripts/linux-modules/shell_management/runinbg)
* [Run a command when files have changed in the current directory.](scripts/linux-modules/file_management/inotify)

## Utilities

Utilities, based on two *super* sections:

#### 1. Main (actions with or without output)

* [Open a new terminal with an initial command.](scripts/utilities-main/general_program_management/newterm)
* [Execute a command in (or run the last command of) a terminal emulator.](scripts/utilities-main/keybind/termcommand)

#### 2. Modules (used in conjuction with command-line programs)

* [Return one or more files for a command using one of two search methods: (1) Locate from a database; (2) Recursively find from the current or specified directory.](scripts/utilities-modules/general_program_management/returnfileforcmd)

---

Linux-shell-base has an [extension repository for utilities consisting of more than one file][packaged-utilities].

## Mobile

Solutions for mobile devices, based on two *super* sections:

#### 1. Android (Android devices)

* [Send an sms using an Android device.](scripts/mobile-android/utilities/sms)
* [Watch and print the X and Y screen tap coordinates of an Android device.](scripts/mobile-android/monitoring/getmobiletappos)

#### 2. Generic (generic solutions for mobile devices)

* [Mount and unmount an MTP device.](scripts/mobile-generic/management/mtp)

# Contributing

If you would like to contribute, please ensure that your contribution adheres to the respective [guidelines](https://github.com/linux-shell-base/linux-shell-base/wiki). Here is a list of [needed solutions](https://github.com/linux-shell-base/linux-shell-base/wiki/Needed-solutions); it can be used for ideas.

An alternative implementation to an already existing solution will be accepted only if it has substantial reason, such as using a different dependency or language.

Finally, credits will be placed in the wiki.

Please send an email to *main@linuxshellbase.com* with any suggestions, comments or questions.

Thanks.

# Download essentials

To download the essential solutions, retrieve *download-essentials.sh* with following command and run it:

```bash
wget https://raw.githubusercontent.com/linux-shell-base/linux-shell-base/install/download-essentials.sh \
&& chmod +x download-essentials.sh
```



[packaged-utilities]: https://github.com/unix-base/linux-shell-base-packaged-utilities
[wiki]: https://github.com/unix-base/linux-shell-base/wiki
