
<p align='center'>
  <img src='/../images/logo-light.png' width='32%' alt='logo-light.png'>
</p>
</br>

**Linux-shell-base** is a resource for advancing computational efficiency and development in Linux.

Its purpose is to help Linux users use the shell and their Linux environment efficiently.

Its solutions are foundational to the [philosophy of computing](https://en.wikipedia.org/wiki/Unix_philosophy#The_UNIX_Programming_Environment) and conform to four principles:

<p>
  • &nbspSolve a fundamental problem in the Linux application layer.<br/>
  • &nbspRequire a considerable amount of research.<br/>
  • &nbspUse a standard approach.<br/>
  • &nbspComply with the <a href='https://en.wikipedia.org/wiki/Unix_philosophy#Eric_Raymond.E2.80.99s_17_Unix_Rules'>UNIX philosophy</a> and standard scripting rules.
</p>

*Linux-shell-base* targets multiple paradigms of the application layer *(described in the [bin/ README](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin#bin))* and provides three types of solutions:

### bin/

Scripts.

### aliases/

Aliases and short functions.

*Aliases and short functions are conceptually the same as scripts except they are primarily used for bash configurations and no more than three lines.*

### one-liners/

One-liners.

*One-liners are conceptually the same as scripts except they are meant to be extended.*

---

This repository initially *(and currently)* consists of 60 scripts, 52 aliases and short functions and 4 one-liners.

All solutions conform to the respective [guideline][wiki] and the following rules:

A solution ...

* is documented.
* is error-free.
* does not contain deprecated code.
* uses modern styled code.
* is independent of any other solution.
* includes a source if exists.

## Examples

The following solutions are included as an example:

#### Utilities

* [Open a new terminal optionally with an initial command to run.](bin/utilities/general/newterm)
* [Execute a given command in (or run the last command of) a terminal emulator.](bin/utilities/keybind/termcommand)

#### Solutions for Android

* [Send an sms using an Android device.](bin/android/sms)
* [Watch and print X and Y screen tap coordinates of an Android device.](bin/android/getmobiletappos)

#### Solutions for core aspects of the Linux operating system *(file, hardware, networking, x11, etc.)*

##### ... with output

* [Archive a file or directory with almost any archive format.](bin/main-output/file/archive)

##### ... without output

* [Move a window to the left or right monitor.](bin/main-no_output/x11/movewindtolftorrghtmntr)

##### ... modules

* [Run a command in the background.](bin/main-modules/shell/runinbg)
* [Run a command when files have changed in the current directory.](bin/main-modules/file/inotify)

#### Solutions for core aspects of the Linux operating system *(file, hardware, networking, x11, etc.)* providing output (values or information) only *(no actions performed)*

##### ... as single-value for other programs

* [Get the size of one or more file and/or directories as a plain number.](https://github.com/linux-shell-base/linux-shell-base/blob/master/one-liners/one-liners-output.bash)
* [Check if the primary wireless local area network device is soft blocked.](bin/output-single-value/hardware/iswlanblocked)
* [Get the ID of a window by name or PID.](https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/output-single-value#x11)

##### ... as multi-value for other programs

* [Print paths of all subdirectories in the specified directory.](bin/output-multi-value/file/printsubdirpaths)

##### ... as information for the user

* [Display useful host related informaton.](bin/output-user/networking/localhost)

#### Utility modules *(scripts used in conjuction with command-line programs)*

* [Return a file for a command using one of two search methods: 1. locate; 2. recursion.](bin/modules/file/returnfileforcmd)
* [Execute a program and an action on the resulting window.](bin/modules/x11/exeprogandwindact)

#### Solutions for mobile devices

* [Mount and unmount an MTP device.](bin/mobile/mtp)

#### Bash utility functions

* [Bash array utilities.](bin/bash_utilities/arrayutils)
* [Bash date and time utilities.](bin/bash_utilities/dateandtimeutils)

#### Generic functions for third party applications

* [Generic utility functions for MySQL.](bin/3rd_party_applications/database/mysqlutil)

## Excluded

The following types of solutions are not included:

* File formatting or converting *(e.g. BMP to JPEG or CYMK colors to RGB colors)*.
* Text formatting
* OS or 3rd party application function specific.
* Requiring very little research.

## Packaged utilities

*Linux-shell-base* has an extension [repository for packaged utilities][packaged-utilities].

## Beginner's documentation

[*Beginners-documentation*][beginners-documentation] is a repository providing documentation on Linux for new Linux users.

## Social

See the *Linux-shell-base* [Facebook page](https://www.facebook.com/linuxshellbase).

## Notes

* All initial solutions have been created and tested in Bash only *(and not Ksh, Zsh, etc.)* and were created with only slight attention to portability, however, they are updated to be more portable if changes are significant.

## Contributing

The goal of this repository is to be as comprehensive as possible. Contributions are therefore welcome. If you would like to contribute a solution, please create a [pull request](https://gist.github.com/Chaser324/ce0505fbed06b947d962) or send an email to *main@linuxshellbase.com*.

Credits will be placed in the wiki and can identify the user by name, username or URL. If a contributed solution is an alternative method/implementation to an already existing one, it will be given the same name with an incremented number, ordered by the most commonly accepted method/implementation. 

Please send an email with any suggestions, comments or questions.

## Posts/news

* Linus Torvalds, the creator of Linux, recently made a statement claiming that [talk of innovation in technology is false](https://linux.slashdot.org/story/17/02/16/1530223/linus-torvalds-talk-of-tech-innovation-is-bullshit-shut-up-and-get-the-work-done), even to the extent that "successful projects are 99 per cent perspiration, and one per cent innovation." This statement perhaps shows how much society is missing out on the benefits of technology.

## Background philosophy

In 1961, NASA set out on a mission to send a manned rocket to the moon, Apollo 11, however, the calculations were far too complex to do by hand. As a result, NASA designed the Apollo Guidance Computer to do these calculations. In the modern day, a typical smartphone is millions times faster than NASA's computers were in 1969. Considering all the math NASA had done with these computers to calculate Apollo 11, should programmers today theoretically have mastered the foundational level of scripting? Linux users throughout the world still have to recreate the basic solutions that are fundamental in Linux.

There is a major incongruence between technology and the global software infrastructure. This infrastructure is primarily not designed for the user as most software development focuseds on individual large-scale projects rather than the foundational level of the application layer. To illustrate the incongruence, if a programmer were to create a new amazing search algorithm, video game, image editor, networking tool, etc. he or she would have to spend a great amount of time researching solutions to problems. In this research, however, the user often has to create a great amount of foundational software to advance basic efficiency. In order for individuals to build software at a rate consistent with the global software infrastructure, there must exist more development towards foundational software.



[packaged-utilities]: https://github.com/linux-shell-base/packaged-utilities
[beginners-documentation]: https://github.com/linux-shell-base/beginners-documentation

[wiki]: https://github.com/linux-shell-base/linux-shell-base/wiki
[wiki-Guideline-for-Scripts]: https://github.com/linux-shell-base/linux-shell-base/wiki/Guideline-for-Scripts
