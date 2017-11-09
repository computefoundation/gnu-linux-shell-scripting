
<img src='/../images/logo-light.png' width='35%' align='left' alt='logo-light.png'>
<br><br><br><br>

**Linux-shell-base** is a resource of UNIX-founded shell solutions making computing with free/libre and open source software efficient.

See [Background philosophy](https://github.com/linux-shell-base/linux-shell-base/wiki/Theory-and-background-philosophy#background-philosophy) to learn why and [Theory](https://github.com/linux-shell-base/linux-shell-base/wiki/Theory-and-background-philosophy#theory) to learn how.
<br><br><br><br><br>

# Application layer paradigms

Linux-shell-base targets the following application layer paradigms:

## Applications

Generic solutions for applications

* [Generic RDBMS functions for MySQL](functions_scripts/applications/databases/mysqlutil)
* [Generic NoSQL database functions for MongoDB](functions_scripts/applications/databases/mongodbutil)

## Programming languages

Solutions for programming languages

* [Bash array utilities](functions_scripts/programming_languages/bash/arrayutils.bash)
* [Bash date and time utilities](functions_scripts/programming_languages/bash/dateandtimeutils.bash)

## Linux

Solutions with respect to core Linux operating system tools and aspects *(e.g. GNU, file and system management and X11)*, based on four *super* sections:

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

The goal of Linux-shell-base is to revive the UNIX philosophy in free/libre and open source software as much as possible. Contributions are therefore more than welcome.

If you would like to help and contribute, please ensure that your contribution adheres to the principles and rules listed above. A reason and/or explanation on how it can be changed may be given if it doesn't. (Please send an email to ensure a solution will be accepted). Finally, changes will be applied by Linux-shell-base if the contribution does not conform to the respective [guideline][wiki].

Credits will be placed in the wiki.

Here is a list of [needed solutions](https://github.com/linux-shell-base/linux-shell-base/wiki/Needed-solutions). It can also be used for ideas.

A contribution may provide an alternative implementation of an already existing solution, however, it must have substantial reason (e.g. it solves the same problem with a different dependency or language).

Please send an email to *main@linuxshellbase.com* with any suggestions, comments or questions.

# Install essentials

As Linux-shell-base is not a framework, there is no installation process, however, essential solutions can be retrieved by downloading *install-essentials.sh* with the following command and running it.

It provides the following:

* 24 of the current 44 scripts
* 2 of the current 4 functions scripts
* 40 of the current 42 aliases and short-functions
* 2 of the current 3 one-liners

All solutions are downloaded to a single directory in the user's home directory.

```bash
wget https://raw.githubusercontent.com/linux-shell-base/linux-shell-base/install/install-essentials.sh \
&& chmod +x install-essentials.sh
```



[packaged-utilities]: https://github.com/linux-shell-base/packaged-utilities
[wiki]: https://github.com/linux-shell-base/linux-shell-base/wiki
