
<br>
<div align='center'>
  <img src='/../images/logo-light.png' width='37.2%' alt='logo-light.png'>
</div>
<br><br><br>

**Linux-shell-base** is a resource to make free/libre and open source software (FLOSS) eventually consistent with the [UNIX philosophy](https://en.wikipedia.org/wiki/Unix_philosophy). It is used indefinitely in all areas of individual software development and general computing, making them easy and efficient by diminishing the architecture of FLOSS with respect to the UNIX philosophy (see the [background philosophy](https://github.com/linux-shell-base/linux-shell-base/wiki/Background-philosophy) for an overview). This objective is achieved by making paradigms of the application layer congruent with the UNIX philosophy. The solutions used to make them congruent solve problems founded on the following principle: have one possible solution with respect to all possible implementations.

As one core characteristic of *Linux-shell-base* is reusability, each solution adheres to the following rules:

* Use a standard approach
* Provide documentation
* Do not contain errors
* Do not contain deprecated or old-styled code
* Include a source if exists
* Do not depend on another solution

All solutions additionally conform to a standard [guideline][wiki].

# Illustration

The following diagram is an abstract representation of the architecture-specificity of sections of multiple paradigms of the application layer. These paradigms relate to the UNIX philosophy in the red box. The blue lines are solutions to relate sections of these paradigms to the UNIX philosophy.

<div align='center'>
  <img src='/../images/FLOSS-architecture-specificity-graph.png' width='90%' alt='FLOSS-architecture-specificity-graph.png'>
</div>
<br>

# Paradigms

The following is a list of the application layer paradigms targeted by *Linux-shell-base* with examples. All solutions in *Linux-shell-base* are divided into them.

## Android

Solutions for Android devices

* [Send an sms using an Android device.](scripts/android/utilities/sms)
* [Watch and print the X and Y screen tap coordinates of an Android device.](scripts/android/monitoring/getmobiletappos)

## Applications

Generic solutions for applications

* [Generic RDBMS functions for MySQL](scripts/applications/databases/mysqlutil)
* [Generic utility functions for MongoDB](scripts/applications/databases/mongodbutil)

## Programming languages

Solutions for programming languages

* [Bash array utilities](scripts/programming_languages/bash/arrayutils.bash)
* [Bash date and time utilities](scripts/programming_languages/bash/dateandtimeutils.bash)

## Main

Solutions for core aspects of the Linux operating system *(e.g. file, networking, x11)*, based on four *super* sections

  1. With output (solutions performing an action with output)

  * [Take a screenshot.](scripts/main-with_output/x11/screenshot)

  2. Without output (solutions performing an action without output)

  * [Remove the last N entries from the bash history.](scripts/main-without_output/shell_management/remlastnhistentries)

  3. Output only - single-value (solutions providing single-value output without performing an action)

  * [Get the size of one or more files and/or directories as a plain number.](https://github.com/linux-shell-base/linux-shell-base/blob/master/one-liners/one-liners-main-output_only-single-value.bash)

  * [Check if the primary wireless local area network device is soft blocked.](scripts/main-output_only-single-value/hardware_management/iswlanblocked)

  * [Get the ID of a window by PID (and other X11 window management solutions).](https://github.com/linux-shell-base/linux-shell-base/tree/master/scripts/main-output_only-single-value#x11)

  4. Output only - multi-value (solutions providing multi-value output without performing an action)

	* [Print the paths of the subsubdirectories of the specified directory.](scripts/main-output_only-multi-value/file_management/printsubsubdirpaths)

## Mobile

Solutions for mobile devices

* [Mount and unmount an MTP device.](scripts/mobile/management/mtp)

## Modules

Solutions used in conjuction with command-line programs, based on two *super* sections

  1. Main (modules for core aspects of the Linux operating system)

	* [Run a command in the background.](scripts/modules-main/shell_management/runinbg)
	* [Run a command when files have changed in the current directory.](scripts/modules-main/file_management/inotify)

  2. Utility (modules providing utility functions)

	* [Return a file for a command using one of two search methods: (1) Locate from a database; (2) Recursively find from the current or specified directory.](scripts/modules-utilities/file_management/returnfileforcmd)

## Utilities

Utilities

* [Open a new terminal optionally with an initial command to run.](scripts/utilities/program_management/newterm)
* [Execute a command in (or run the last command of) a terminal emulator.](scripts/utilities/keybind/termcommand)

# Packaged utilities

*Linux-shell-base* has an [extension repository for *utilities* consisting of more than one file][packaged-utilities].

# Contributing

*Linux-shell-base* does not correspond to the normal patterns of software development. Its objective is not to create a new software tool but to revive the UNIX philosophy in FLOSS. Its solutions therefore incorporate philosophy.

If you would like to help and contribute, please create a [pull request](https://gist.github.com/Chaser324/ce0505fbed06b947d962) and ensure that your solution adheres to the principle stated and rules listed above. If it does not, a reason and/or explanation on how it can be changed may be given. (You may send an email to *main@linuxshellbase.com* to ask if a solution will be accepted beforehand). If it does not conform to the respective [guideline][wiki], changes will be applied by *Linux-shell-base*. Finally, a contributed solution may be an alternative method/implementation of an already existing solution.

Credits will be placed in the wiki and can identify the user by name, username or URL.

Please send an email to *main@linuxshellbase.com* with any suggestions, comments or questions.

# Install essentials

As *Linux-shell-base* is not a framework, there is no full installation other than cloning the repository, however, essential solutions can be retrieved by downloading *install-essentials.sh* with the following command and running it.

It provides 31 of the current 48 scripts, 45 of the current 47 aliases and short-functions and 2 of the current 3 one-liners in *Linux-shell-base*. All solutions are downloaded to a single directory in the user's home directory.

```bash
wget https://raw.githubusercontent.com/linux-shell-base/linux-shell-base/install/install-essentials.sh \
&& chmod +x install-essentials.sh
```



[packaged-utilities]: https://github.com/linux-shell-base/packaged-utilities
[wiki]: https://github.com/linux-shell-base/linux-shell-base/wiki
