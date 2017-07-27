
<p align='center'>
  <img src='/../images/logo-light.png' width='34.5%' alt='logo-light.png'>
</p>

---

<p align='center'>
  <a href='https://github.com/linux-shell-base/linux-shell-base#examples'>Examples</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href='https://github.com/linux-shell-base/linux-shell-base#installation'>Installation</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href='https://github.com/linux-shell-base/linux-shell-base#contributing'>Contributing</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href='https://www.facebook.com/linuxshellbase'>Facebook</a>
</p>
<br>

**Linux-shell-base** is a foundational resource of standard shell solutions for advancing computational efficiency in Linux. It targets multiple paradigms of the application layer (described in the [bin/ README](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin#3rd_party_applications)) with solutions that conform to three principles:

1. Solve a fundamental problem in the Linux application layer.
2. Require a considerable amount of research.
3. Comply with the [UNIX philosophy](https://en.wikipedia.org/wiki/Unix_philosophy#Eric_Raymond.E2.80.99s_17_Unix_Rules).

*Linux-shell-base* is a foundational approach to the [philosophy of computing](https://en.wikipedia.org/wiki/Unix_philosophy#The_UNIX_Programming_Environment) and therefore, its primary goal is to provide *reusable* and *UNIX-centric* solutions. As a result, each of its solutions conform to the following rules:

* Provide documentation
* Do not contain errors
* Use a standard approach
* Do not contain deprecated or old styled code
* Do not depend on any other solution
* Include a source if exists

Additionally, each of its solutions conform to the respective [guideline][wiki].

## Examples

The following is a list of one or two examples from each paradigm of the application layer targeted by
*Linux-shell-base*:

##### [Utilities](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/utilities#utilities)

* [Open a new terminal optionally with an initial command to run.](bin/utilities/general/newterm)
* [Execute a command in (or run the last command of) a terminal emulator.](bin/utilities/keybind/termcommand)

##### [Solutions for Android](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/android#android)

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

## Excluded solutions

The following is a list of the types of solutions excluded from *Linux-shell-base*:

* File formatting or converting *(e.g. BMP to JPEG or CYMK colors to RGB colors)*
* Text formatting
* Commands requiring very little research
* OS or 3rd party application function specific

## Packaged utilities

All solutions in *Linux-shell-base* are contained in no more than one file. It has an extension [repository for utilities consisting of more than one file][packaged-utilities].

## Installation

As *Linux-shell-base* is not a framework, there is no full installation. *(Please simply clone the repository).*

To obtain only the essential solutions, download *install-essentials.sh* with the following command and run it:

```bash
wget https://raw.githubusercontent.com/linux-shell-base/linux-shell-base/install/install-essentials.sh \
&& chmod +x install-essentials.sh
```

## Contributing

*Linux-shell-base* aims to provide a comprehensive resource for the Linux community. Therefore, contributions are more than welcome. Please create a [pull request](https://gist.github.com/Chaser324/ce0505fbed06b947d962) or send an email to *main@linuxshellbase.com* if you would like to contribute a solution or suggest edits. Please make sure that the solution conforms to the principles and general solution rules listed above and the respective [guideline][wiki].

Credits will be placed in the wiki and can identify the user by name, username or URL. If a contributed solution is an alternative method/implementation to an already existing one, it will be given the same name with an incremented number, ordered by the most commonly accepted method/implementation.

Please send an email with any suggestions, comments or questions.

## Notes

* This repository initially *(and currently)* consists of 60 scripts, 52 aliases and short functions and 4 one-liners.

* All initial solutions have been created and tested in the Bash shell only and were created with only slight attention to portability. They are updated to be more portable if changes are significant however.

## Background philosophy

In 1961, NASA set out on a mission to send a manned rocket to the moon, Apollo 11, however, the calculations were far too complex to do by hand. As a result, NASA designed the Apollo Guidance Computer to do these calculations. In the modern day, a typical smartphone is millions times faster than NASA's computers were in 1969. Considering all the math NASA had done with these computers to calculate Apollo 11, should programmers today theoretically have mastered the foundational level of scripting? Linux users are still recreating foundational solutions to advance computational efficiency.

There is a major incongruence between technology and the global software infrastructure. This infrastructure is primarily not designed for the user as most software development focuses on individual large-scale projects. To illustrate, a programmer creating a new project, such as a new search algorithm, video game, image editor or networking tool, for example, has to spend a great amount of time researching solutions to the problems created by it. Furthermore, however, he or she has to solve several foundational scripting problems in order to progressively build the project at a rate consistent with large-scale projects. With all the requirements in life, however, he or she may not get close because most of the time spent developing is at the foundational level of computing. In order for individuals to build software at a more consistent rate, there must exist more development towards foundational level of computing.



[packaged-utilities]: https://github.com/linux-shell-base/packaged-utilities
[wiki]: https://github.com/linux-shell-base/linux-shell-base/wiki
