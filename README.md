
<img src='/../images/logo-light.png' width='28%' align='left' alt='logo-light.png'>
<br>

General computing efficiency does not exist because the UNIX philosophy is absent in software. **Linux-shell-base** is presenting the UNIX philosophy to free/libre and open source software (FLOSS) by diminishing the architecture of FLOSS with shell solutions for the foundation of computing. These shell solutions solve problems for sections of application layer paradigms with respect to the UNIX philosophy. Overall, its purpose is to make general computing efficient (see [Theory](https://github.com/linux-shell-base/linux-shell-base/wiki/Theory-and-background-philosophy#theory) to learn more).
<br><br><br>

*See [Background philosophy](https://github.com/linux-shell-base/linux-shell-base/wiki/Theory-and-background-philosophy#background-philosophy) to learn more about the reason general computing efficiency does not exist and how Linux-shell-base originated.*

# Application layer paradigms

The following is a list of all application layer paradigms targeted by Linux-shell-base. Each paradigm includes one or two example solutions.

## Applications

Generic solutions for applications

* [Generic RDBMS functions for MySQL](functions/applications/databases/mysqlutil)
* [Generic utility functions for MongoDB](functions/applications/databases/mongodbutil)

## Programming languages

Solutions for programming languages

* [Bash array utilities](functions/programming_languages/bash/arrayutils.bash)
* [Bash date and time utilities](functions/programming_languages/bash/dateandtimeutils.bash)

## Linux

Solutions with respect to core aspects of the GNU/Linux operating system *(e.g. file, network, X11 and shell management)*, based on five *super* sections:

#### 1. With output (performing an action with output)

* [Take a screenshot.](scripts/linux-with_output/x11/screenshot)

#### 2. Without output (performing an action without output)

* [Rename all files with a matching name recursively.](scripts/linux-without_output/file_management/renrec)

#### 3. Output only - single-value (providing single-value output without performing an action)

* [Get the size of one or more files and/or directories as a plain number.](https://github.com/linux-shell-base/linux-shell-base/blob/master/one-liners/one-liners-linux-output_only-single-value.bash)
* [Get the ID of a window by PID.](scripts/linux-output_only-single-value/x11/getwindidbypid)

#### 4. Output only - multi-value (providing multi-value output without performing an action)

* [Print the paths of the subsubdirectories of the specified directory.](scripts/linux-output_only-multi-value/file_management/printsubsubdirpaths)

#### 5. Modules (used in conjuction with command-line programs)

* [Run a command in the background.](scripts/linux-modules/shell_management/runinbg)
* [Run a command when files have changed in the current directory.](scripts/linux-modules/file_management/inotify)

## Utilities

Utilities, based on two *super* sections:

#### 1. Primary

* [Open a new terminal with an initial command to run.](scripts/utilities-primary/general_program_management/newterm)
* [Execute a command in (or run the last command of) a terminal emulator.](scripts/utilities-primary/keybind/termcommand)

#### 2. Modules (used in conjuction with command-line programs)

* [Return one or more files for a command using one of two search methods: (1) Locate from a database; (2) Recursively find from the current or specified directory.](scripts/utilities-modules/general_program_management/returnfileforcmd)

## Mobile

Solutions for mobile devices, based on two *super* sections:

#### 1. Android (for Android devices)

* [Send an sms using an Android device.](scripts/mobile-android/utilities/sms)
* [Watch and print the X and Y screen tap coordinates of an Android device.](scripts/mobile-android/monitoring/getmobiletappos)

#### 2. Generic (generic solutions for mobile devices)

* [Mount and unmount an MTP device.](scripts/mobile-generic/management/mtp)

# Packaged utilities

Linux-shell-base has an [extension repository for *utilities* consisting of more than one file][packaged-utilities].

# Contributing

The goal of Linux-shell-base is to revive the UNIX philosophy as much as possible to provide a foundation for efficient computing. Contributions are therefore more than welcome.

If you would like to help and contribute, please ensure that your contribution adheres to the principles and rules listed above. A reason and/or explanation on how it can be changed may be given if it doesn't. (Please send an email to ensure a solution will be accepted). Finally, changes will be applied by Linux-shell-base if the contribution does not conform to the respective [guideline][wiki].

Credits will be placed in the wiki.

Here is a list of [needed solutions](https://github.com/linux-shell-base/linux-shell-base/wiki/Needed-solutions). It can also be used for ideas.

A contribution may provide an alternative implementation of an already existing solution, however, it must have substantial reason (e.g. it solves the same problem with a different dependency or language).

Please send an email to *main@linuxshellbase.com* with any suggestions, comments or questions.

# Install essentials

As Linux-shell-base is not a framework, there is no installation process, however, essential solutions can be retrieved by downloading *install-essentials.sh* with the following command and running it.

It provides the following:

* 25 of the current 46 scripts
* 2 of the current 4 functions scripts
* 45 of the current 47 aliases and short-functions
* 2 of the current 3 one-liners

All solutions are downloaded to a single directory in the user's home directory.

```bash
wget https://raw.githubusercontent.com/linux-shell-base/linux-shell-base/install/install-essentials.sh \
&& chmod +x install-essentials.sh
```



[packaged-utilities]: https://github.com/linux-shell-base/packaged-utilities
[wiki]: https://github.com/linux-shell-base/linux-shell-base/wiki
