
<img src='/../images/logo-light.png' width='32.2%' align='left' alt='logo-light.png'>
<br><br><br><br>

**Linux-shell-base** is a resource of UNIX-based solutions for the GNU/Linux shell.
<br><br><br><br><br><br>

# Application layer paradigms

Linux-shell-base targets the following application layer paradigms:

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

* [Open a new terminal with an initial command to run.](scripts/utilities-main/general_program_management/newterm)
* [Execute a command in (or run the last command of) a terminal emulator.](scripts/utilities-main/keybind/termcommand)

#### 2. Modules (used in conjuction with command-line programs)

* [Return one or more files for a command using one of two search methods: (1) Locate from a database; (2) Recursively find from the current or specified directory.](scripts/utilities-modules/general_program_management/returnfileforcmd)

## Mobile

Solutions for mobile devices, based on two *super* sections:

#### 1. Android (Android devices)

* [Send an sms using an Android device.](scripts/mobile-android/utilities/sms)
* [Watch and print the X and Y screen tap coordinates of an Android device.](scripts/mobile-android/monitoring/getmobiletappos)

#### 2. Generic (generic solutions for mobile devices)

* [Mount and unmount an MTP device.](scripts/mobile-generic/management/mtp)

# Packaged utilities

Linux-shell-base has an [extension repository for *utilities* consisting of more than one file][packaged-utilities].

# Contributing

The goal of Linux-shell-base is to make general computing as efficient much as possible. Contributions are therefore more than welcome.

If you would like to help and contribute, please ensure that your contribution adheres to the respective [guidelines](https://github.com/linux-shell-base/linux-shell-base/wiki) and send an email if you are unsure it will be accepted. A contribution may be an alternative implementation of an already existing solution, however, it must have substantial reason (e.g. it solves the same problem with a different dependency or language).

Credits will be placed in the wiki.

Here is a list of [needed solutions](https://github.com/linux-shell-base/linux-shell-base/wiki/Needed-solutions). It can also be used for ideas.

Please send an email to *main@linuxshellbase.com* with any suggestions, comments or questions.

# Install essentials

As Linux-shell-base is not a framework, there is no installation process, however, essential solutions can be retrieved by downloading *install-essentials.sh* with the following command and running it.

It provides the following:

* 24 of the current 44 scripts
* 2 of the current 4 functions scripts
* 39 of the current 41 aliases and short-functions
* 2 of the current 3 one-liners

All solutions are downloaded to a single directory in the user's home directory.

```bash
wget https://raw.githubusercontent.com/linux-shell-base/linux-shell-base/install/install-essentials.sh \
&& chmod +x install-essentials.sh
```



[packaged-utilities]: https://github.com/linux-shell-base/packaged-utilities
[wiki]: https://github.com/linux-shell-base/linux-shell-base/wiki
