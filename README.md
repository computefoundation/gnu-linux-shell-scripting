
<p align='center'>
  <img src='/../images/logo-light.png' width='34.5%' alt='logo-light.png'>
</p>
<br>

---

**Linux-shell-base** is a resource for advancing computational efficiency and development in Linux.

Its purpose is to help Linux users use the shell and their Linux environment efficiently through a foundational approach to the [philosophy of computing](https://en.wikipedia.org/wiki/Unix_philosophy#The_UNIX_Programming_Environment).

Its solutions conform to four principles:

1. Solve a fundamental problem in the Linux application layer.
2. Require a considerable amount of research.
3. Use a standard approach.
4. Comply with the [UNIX philosophy](https://en.wikipedia.org/wiki/Unix_philosophy#Eric_Raymond.E2.80.99s_17_Unix_Rules).

---

*Linux-shell-base* targets multiple paradigms of the application layer *(described in the [bin/ README](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin#bin))* and provides three types of solutions:

1. Aliases and short functions for bash configurations
2. Executable scripts
3. One-liners for extended solutions

All solutions conform to the respective [guideline][wiki] and the following rules:

A solution ...

* is documented.
* is error-free.
* does not contain deprecated code.
* uses modern styled code.
* is independent of any other solution.
* includes a source if exists.

## Examples

The following is a list of some of the solutions in each paradigm targeted by *Linux-shell-base*:

##### Utilities

* [Open a new terminal optionally with an initial command to run.](bin/utilities/general/newterm)
* [Execute a command in (or run the last command of) a terminal emulator.](bin/utilities/keybind/termcommand)

##### Solutions for Android

* [Send an sms using an Android device.](bin/android/sms)
* [Watch and print X and Y screen tap coordinates of an Android device.](bin/android/getmobiletappos)

##### Solutions for core aspects of the Linux operating system *(file, hardware, networking, x11, etc.)*

###### with output

* [Archive a file or directory with almost any archive format.](bin/main-output/file/archive)

###### without output

* [Move a window to the left or right monitor.](bin/main-no_output/x11/movewindtolftorrghtmntr)

###### modules

* [Run a command in the background.](bin/main-modules/shell/runinbg)
* [Run a command when files have changed in the current directory.](bin/main-modules/file/inotify)

##### Solutions for core aspects of the Linux operating system *(file, hardware, networking, x11, etc.)* providing output (values or information) only *(no actions performed)*

###### as single-value for other programs

* [Get the size of one or more files and/or directories as a plain number.](https://github.com/linux-shell-base/linux-shell-base/blob/master/one-liners/one-liners-output.bash)
* [Check if the primary wireless local area network device is soft blocked.](bin/output-single-value/hardware/iswlanblocked)
* [Get the ID of a window by name or PID.](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/output-single-value#x11)

###### as multi-value for other programs

* [Print paths of all subdirectories in the specified directory.](bin/output-multi-value/file/printsubdirpaths)

###### as information for the user

* [Display useful host related informaton.](bin/output-user/networking/localhost)

##### Utility modules *(scripts used in conjuction with command-line programs)*

* [Return a file for a command using one of two search methods: 1. locate; 2. recursion.](bin/modules/file/returnfileforcmd)
* [Execute a program and an action on the resulting window.](bin/modules/x11/exeprogandwindact)

##### Solutions for mobile devices

* [Mount and unmount an MTP device.](bin/mobile/mtp)

##### Bash utility functions

* [Bash array utilities.](bin/bash_utilities/arrayutils.bash)
* [Bash date and time utilities.](bin/bash_utilities/dateandtimeutils.bash)

##### Generic functions for third party applications

* [Generic utility functions for MySQL.](bin/3rd_party_applications/database/mysqlutil)

## Excluded solutions

The following types of solutions are excluded from *Linux-shell-base*:

* File formatting or converting *(e.g. BMP to JPEG or CYMK colors to RGB colors)*
* Text formatting
* OS or 3rd party application function specific
* Requiring very little research

## Packaged utilities

*Linux-shell-base* has an extension [repository for utilities consisting of more than one file][packaged-utilities].

## Installation

As *Linux-shell-base* is not a framework, there is no full installation.

To obtain only the essential solutions, please download ***install-essentials.sh*** with the following command and run it:

```bash
wget https://raw.githubusercontent.com/linux-shell-base/linux-shell-base/install/install-essentials.sh && \
chmod +x install-essentials.sh
```

## Contributing

The goal of this repository is to provide a foundational and comprehensive resource to greatly benefit computational efficiency and development within the Linux community. Contributions are therefore more than welcome and appreciated. If you would like to contribute a solution or suggest edits, please create a [pull request](https://gist.github.com/Chaser324/ce0505fbed06b947d962) or send an email to *main@linuxshellbase.com*. Please make sure that the solution conforms to the principles described above and the respective [guideline][wiki].

Credits will be placed in the wiki and can identify the user by name, username or URL. If a contributed solution is an alternative method/implementation to an already existing one, it will be given the same name with an incremented number, ordered by the most commonly accepted method/implementation. 

Please send an email with any suggestions, comments or questions.

## Notes

* This repository initially *(and currently)* consists of 60 scripts, 52 aliases and short functions and 4 one-liners.

* All initial solutions have been created and tested in the Bash shell only and were created with only slight attention to portability. They are updated to be more portable if changes are significant however.

## Social media

See the *Linux-shell-base* [Facebook page](https://www.facebook.com/linuxshellbase).

## Background philosophy

In 1961, NASA set out on a mission to send a manned rocket to the moon, Apollo 11, however, the calculations were far too complex to do by hand. As a result, NASA designed the Apollo Guidance Computer to do these calculations. In the modern day, a typical smartphone is millions times faster than NASA's computers were in 1969. Considering all the math NASA had done with these computers to calculate Apollo 11, should programmers today theoretically have mastered the foundational level of scripting? Linux users are still recreating foundational solutions to advance computational efficiency.

There is a major incongruence between technology and the global software infrastructure. This infrastructure is primarily not designed for the user as most software development focuses on individual large-scale projects. To illustrate, a programmer creating a new project, such as a new search algorithm, video game, image editor or networking tool, for example, has to spend a great amount of time researching solutions to the problems created by it. Furthermore, however, he or she has to solve several foundational scripting problems in order to progressively build the project at a rate consistent with large-scale projects. With all the requirements in life, however, he or she may not get close because most of the time spent developing is at the foundational level of computing. In order for individuals to build software at a more consistent rate, there must exist more development towards foundational level of computing.



[packaged-utilities]: https://github.com/linux-shell-base/packaged-utilities
[wiki]: https://github.com/linux-shell-base/linux-shell-base/wiki
