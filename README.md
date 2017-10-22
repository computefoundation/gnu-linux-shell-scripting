
<br>
<div align='center'>
  <img src='/../images/logo-light.png' width='37.2%' alt='logo-light.png'>
</div>
<br><br><br>

**Linux-shell-base** is a resource making the global infrastructure of free/libre and open source software (FLOSS) consistent with the UNIX philosophy *(see [Illustration and background philosophy](https://github.com/linux-shell-base/linux-shell-base/wiki/Illustration-and-background-philosophy) to learn more)*. This objective is achieved by providing solutions to problems founded on the following two principles:

1. Have one possible solution with respect to all possible implementations.
2. Relate to at least one other section of any application layer paradigm.

Overall, this repository makes efficient computing achievable by providing solutions to foundational problems.

As one core characteristic of *Linux-shell-base* is reusability, each solution adheres to the following rules:

* Use a standard approach
* Provide documentation
* Do not contain deprecated or old-styled code
* Include a source if exists
* Do not depend on another solution

All solutions additionally conform to a standard [guideline][wiki].

# Paradigms

The following is a list of all application layer paradigms targeted by *Linux-shell-base* with examples.

## Applications

Generic solutions for applications

* [Generic RDBMS functions for MySQL](functions/applications/databases/mysqlutil)
* [Generic utility functions for MongoDB](functions/applications/databases/mongodbutil)

## Programming languages

Solutions for programming languages

* [Bash array utilities](functions/programming_languages/bash/arrayutils.bash)
* [Bash date and time utilities](functions/programming_languages/bash/dateandtimeutils.bash)

## Linux

Solutions for core aspects of the Linux operating system *(e.g. file management, network management, x11)*, based on five *super* sections:

  1. With output (solutions performing an action with output)

  * [Take a screenshot.](scripts/linux-with_output/x11/screenshot)

  2. Without output (solutions performing an action without output)

  * [Rename all files with a matching name recursively.](scripts/linux-without_output/file_management/renrec)

  3. Output only - single-value (solutions providing single-value output without performing an action)

  * [Get the size of one or more files and/or directories as a plain number.](https://github.com/linux-shell-base/linux-shell-base/blob/master/one-liners/one-liners-linux-output_only-single-value.bash)

  * [Check if the primary wireless local area network device is soft blocked.](scripts/linux-output_only-single-value/hardware_management/iswlanblocked)

  * [Get the ID of a window by PID (and other X11 window management solutions).](https://github.com/linux-shell-base/linux-shell-base/tree/master/scripts/linux-output_only-single-value#x11)

  4. Output only - multi-value (solutions providing multi-value output without performing an action)

  * [Print the paths of the subsubdirectories of the specified directory.](scripts/linux-output_only-multi-value/file_management/printsubsubdirpaths)

  5. Modules (solutions used in conjuction with command-line programs)

  * [Run a command in the background.](scripts/linux-modules/shell_management/runinbg)
  * [Run a command when files have changed in the current directory.](scripts/linux-modules/file_management/inotify)

## Utilities

Utilities, based on two *super* sections:

  1. Primary

  * [Open a new terminal with an initial command to run.](scripts/utilities-primary/general_program_management/newterm)
  * [Execute a command in (or run the last command of) a terminal emulator.](scripts/utilities-primary/keybind/termcommand)

  2. Modules (solutions used in conjuction with command-line programs)

  * [Return one or more files for a command using one of two search methods: (1) Locate from a database; (2) Recursively find from the current or specified directory.](scripts/utilities-modules/general_program_management/returnfilesforcmd)
  * [Execute a program with an action on the resulting window.](scripts/utilities-modules/x11/exeprogwithwindact)

## Mobile

Solutions for mobile devices, based on two *super* sections:

  1. Android (solutions for Android devices)

  * [Send an sms using an Android device.](scripts/mobile-android/utilities/sms)
  * [Watch and print the X and Y screen tap coordinates of an Android device.](scripts/mobile-android/monitoring/getmobiletappos)

  2. Generic (generic solutions for mobile devices)

  * [Mount and unmount an MTP device.](scripts/mobile-generic/management/mtp)

# Packaged utilities

*Linux-shell-base* has an [extension repository for *utilities* consisting of more than one file][packaged-utilities].

# Contributing

If you would like to help and contribute, please ensure that your contribution adheres to the principles and rules listed above. A reason and/or explanation on how it can be changed may be given if it does not. (Please send an email to ensure a solution will be accepted). Finally, changes will be applied by *Linux-shell-base* if the contribution does not conform to the respective [guideline][wiki].

Credits will be placed in the wiki.

Here is the list of [needed solutions](https://github.com/linux-shell-base/linux-shell-base/wiki/Needed-solutions). It can also be used for ideas.

A contribution may provide an alternative implementation of an already existing solution, however, it must have substantial reason (e.g. it solves the same problem with a different dependency or language).

Please send an email to *main@linuxshellbase.com* with any suggestions, comments or questions.

# Install essentials

As *Linux-shell-base* is not a framework, there is no full installation other than cloning the repository, however, essential solutions can be retrieved by downloading *install-essentials.sh* with the following command and running it.

It provides the following:

* 30 of the current 46 scripts
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
