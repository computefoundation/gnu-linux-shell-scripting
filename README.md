
<br>
<div align='center'>
  <img src='/../images/logo-light.png' width='37.2%' alt='logo-light.png'>
</div>
<br>
<br>

---

<p align='center'>
  <a href='https://github.com/linux-shell-base/linux-shell-base#examples'>Examples</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href='https://github.com/linux-shell-base/linux-shell-base#installation'>Installation</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href='https://github.com/linux-shell-base/linux-shell-base#contributing'>Contributing</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href='https://www.facebook.com/linuxshellbase'>Facebook</a>
</p>
<br>

**Linux-shell-base** is a resource of general solutions for free and open source software. Its aim is to provide the next layer above the [GNU project](https://www.gnu.org/gnu/linux-and-gnu.en.html) to make Linux an easy to use operating system. Its solutions adhere to the following principles:

1. Solve a fundamental problem.
2. Require a considerable amount of research.
3. Comply with the [UNIX philosophy](https://en.wikipedia.org/wiki/Unix_philosophy#Eric_Raymond.E2.80.99s_17_Unix_Rules).

Its solutions adhere to the following general rules:

* Use a standard approach
* Provide standard documentation
* Do not contain errors
* Do not contain deprecated or old-styled code
* Prefer generic over 3rd-party dependencies
* Be independent of other solutions
* Include a source if exists

Each solution additionally conforms to a [guideline][wiki].

# Examples

The following is a list of one or two examples from [each paradigm of the application layer](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin) targeted by
*Linux-shell-base*:

##### [Utilities](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/utilities#utilities)

* [Open a new terminal optionally with an initial command to run.](bin/utilities/general/newterm)
* [Execute a command in (or run the last command of) a terminal emulator.](bin/utilities/keybind/termcommand)

##### [Android](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/android#android)

* [Send an sms using an Android device.](bin/android/sms)
* [Watch and print X and Y screen tap coordinates of an Android device.](bin/android/getmobiletappos)

##### Solutions for core aspects of the Linux operating system *(file, hardware, networking, x11, etc.)*

###### [... with output](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/main-output#main-output)

* [Archive a file or directory with almost any archive format.](bin/main-output/file/archive)

###### [... without output](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/main-no_output#main-no_output)

* [Move a window to the left or right monitor.](bin/main-no_output/x11/movewindtolftorrghtmntr)

###### [... modules](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/main-modules#main-modules)

* [Run a command in the background.](bin/main-modules/shell/runinbg)
* [Run a command when files have changed in the current directory.](bin/main-modules/file/inotify)

##### Solutions for core aspects of the Linux operating system *(file, hardware, networking, x11, etc.)* providing output (values or information) only *(no actions performed)*

###### [... as single-value for other programs](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/output-single-value#output-single-value)

* [Get the size of one or more files and/or directories as a plain number.](https://github.com/linux-shell-base/linux-shell-base/blob/master/one-liners/one-liners-output.bash)
* [Get the ID of a window by name or PID (and other X11 window management solutions).](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/output-single-value#x11)

###### [... as multi-value for other programs](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/output-multi-value#output-multi-value)

* [Print paths of all subdirectories in the specified directory.](bin/output-multi-value/file/printsubdirpaths)

###### [... as information for the user](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/output-user#output-user)

* [Display useful host related informaton.](bin/output-user/networking/localhost)

##### [Utility modules *(scripts used in conjuction with command-line programs)*](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/modules#modules)

* [Return a file for a command using one of two search methods: (1) Locate from a database; (2) Recursively find from the current or specified directory.](bin/modules/file/returnfileforcmd)
* [Execute a program and an action on the resulting window.](bin/modules/x11/exeprogandwindact)

##### [Solutions for mobile devices](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/mobile#mobile)

* [Mount and unmount an MTP device.](bin/mobile/mtp)

##### [Bash utility functions](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/bash_utilities#bash_utilities)

* [Bash array utilities.](bin/bash_utilities/arrayutils.bash)
* [Bash date and time utilities.](bin/bash_utilities/dateandtimeutils.bash)

##### [Generic functions for third party applications](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/3rd_party_applications#3rd_party_applications)

* [Generic utility functions for MySQL.](bin/3rd_party_applications/database/mysqlutil)
* [Generic utility functions for MongoDB.](bin/3rd_party_applications/database/mongodbutil)

# Excluded solutions

The following is a list of types of solutions excluded from *Linux-shell-base*:

* File formatting or converting *(e.g. BMP to JPEG or CYMK colors to RGB colors)*
* Text formatting
* OS or architecture specific

# Packaged utilities

*Linux-shell-base* has an [extension repository for **utilities** consisting of more than one file][packaged-utilities].

# Installation

As *Linux-shell-base* is not a framework, there is no full installation. *(Please simply clone the repository).*

To obtain only the essential solutions, download *install-essentials.sh* with the following command and run it:  
*(Note: All solutions will be downloaded to a single directory).*

```bash
wget https://raw.githubusercontent.com/linux-shell-base/linux-shell-base/install/install-essentials.sh \
&& chmod +x install-essentials.sh
```

# Contributing

*Linux-shell-base* aims to be as comprehensive as possible. Therefore, contributions are more than welcome. Please create a [pull request](https://gist.github.com/Chaser324/ce0505fbed06b947d962) to contribute a solution or suggest edits. Please make sure that the solution follows the principles and rules listed above. Credits will be placed in the wiki and can identify the user by name, username or URL.

A contributed solution can be an alternative method/implementation to an already existing one. In this case, it will be given the same name with an incremented number.

Please send an email to *main@linuxshellbase.com* with any suggestions, comments or questions.

# Notes

* This repository initially *(and currently)* consists of 60 scripts, 52 aliases and short functions and 4 one-liners.

* All initial solutions have been created and tested in the Bash shell only and were created with only slight attention to portability. They are updated to be more portable if changes are significant however.



[packaged-utilities]: https://github.com/linux-shell-base/packaged-utilities
[wiki]: https://github.com/linux-shell-base/linux-shell-base/wiki
