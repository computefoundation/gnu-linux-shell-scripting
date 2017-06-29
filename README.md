
# Linux-shell-base

**Linux-shell-base** is a resource of standard fundamental shell solutions within the Linux application layer.

As technology advances at an [exponential rate](http://theemergingfuture.com/speed-technological-advancement.htm), it is significant for all individuals to be able to make use of it. *Linux-shell-base* is a foundation of [the philosophy of computing](https://en.wikipedia.org/wiki/Unix_philosophy#The_UNIX_Programming_Environment) to allow overall efficient computing for computer users and advance general development within the Linux community.

*Linux-shell-base* is not a framework and has no build or install automation. All of its solutions conform to four principles:

* Solve a fundamental problem within the Linux application layer.
* Require a considerable amount of research.
* Use a standard and widely accepted approach.
* Comply with the [UNIX philosophy][reference-Eric-Raymond-17_Unix_Rules] and standard scripting rules.

They also conform to the respective [guideline][wiki] in addition to the following rules:

A solution ...

* is documented.
* contains no deprecated code.
* is error-free.
* is independent of any other solution.
* includes a source if exists.

Solutions exist in the following three directories:

### bin/

Scripts.

### one-liners/

One-liners.

### aliases/

Aliases and short functions for bash profiles.

## Examples

This repository contains the following solutions as an example:

#### Solutions for the Linux operating system *(file, hardware, networking, x11, etc.)*

##### ... with output

* [Archive a file or directory with almost any archive format.](bin/main-output/file/archive)

##### ... without output

* [Perform one of multiple window actions.](bin/main-no_output/x11/wind)

##### ... modules (scripts used in conjuction with command-line programs)

* [Run a command in the background.](bin/main-modules/shell/runinbg)
* [Run a command when files have changed in the current directory.](bin/main-modules/file/inotify)

#### Solutions for the Linux operating system *(file, hardware, networking, x11, etc.)* providing output only *(no actions performed)*

##### ... as single-value for other programs

* [Get the size of a file or directory as a plain number.](bin/output-single-value/file/filesize)
* [Check if the primary wireless local area network device is soft blocked.](bin/output-single-value/hardware/iswlanblocked)
* [Check if connected to the internet.](bin/output-single-value/networking/connectedtointernet)
* [Get the ID of the active window.](bin/output-single-value/x11/getactvwindid)

##### ... as multi-value for other programs

* [Print paths of all subdirectories of the specified directory.](bin/output-multi-value/file/printsubdirpaths)

##### ... for the user

* [Display useful host related informaton.](bin/output-user/networking/localhost)

#### Utility modules for command-line programs

* [Return a file for a command by either locating or recursively searching for it.](bin/modules/file/returnfileforcmd)
* [Execute a command and an action on the resulting window.](bin/modules/x11/execmdandwindact)

#### Utilities

* [Open a new terminal and optionally run an initial command in it.](bin/utilities/general/newterm)
* [Get weather information in the terminal (with AccuWeather and wttr.in).](bin/utilities/productivity/wttr)
* [Run a countdown timer in the terminal.](bin/utilities/other/countdown)

#### Solutions for mobile devices

* [Mount and unmount an MTP device.](bin/mobile/mtp)

#### Bash utility functions

* [Bash array utilities.](bin/bash_utilities/arrayutils)
* [Bash date and time utilities.](bin/bash_utilities/dateandtimeutils)

#### Solutions for Android

* [Get contact info from an Android device.](bin/android/contactinfo)
* [Send an sms using an Android device.](bin/android/sms)
* [Turn an Android device screen off if on.](bin/android/turnmobilescreenoff)

#### Generic functions for third party applications

* [Generic utility functions for MySQL.](bin/3rd_party_applications/database/mysqlutil)

## Excluded

The type of solutions this repository does not include:

* File formatting or converting *(e.g. BMP to JPEG or CYMK colors to RGB colors)*.
* Text formatting
* OS or application function specific.
* Requiring very little research.

## Packaged utilities

*Linux-shell-base* has an extension [repository for packaged utilities][packaged-utilities].

## Beginner's documentation

*Linux-shell-base* has a repository providing [documentation on Linux for new Linux users][beginners-documentation].

# Notes

* This repository initially *(and currently)* consists of 61 scripts, 52 aliases and short functions and 3 one-liners.

* All initial solutions have been created and tested in Bash only *(and not Ksh, Zsh, etc.)* and were created with only slight attention to portability, however, they are updated to be more portable with significant changes.

# Posts/news

* There exists a significant false notion within society that the level of benefit provided by technology is close to the level contributed to it. Linus Torvalds, the creator of Linux, recently made a statement claiming that [talk of innovation in technology is false](https://linux.slashdot.org/story/17/02/16/1530223/linus-torvalds-talk-of-tech-innovation-is-bullshit-shut-up-and-get-the-work-done), even to the extent that "successful projects are 99 per cent perspiration, and one per cent innovation." Simply by typical understanding of innovation within society, this statement considerably shows how much all of society is missing out on the benefits of technology by misunderstanding and possibly misusing it.

# Contributing

The goal of this repository is to be as comprehensive as possible. If you would like to contribute a solution, please create a [pull request](https://gist.github.com/Chaser324/ce0505fbed06b947d962) or send an email to *linuxshellbase@yahoo.com*.

If a contributed solution is an alternative method/implementation to an already existing one, it will be given the same name with an incremented number, ordered by the most commonly accepted method/implementation. Finally, credits will be placed in the wiki and can identify the user by name, username or URL.

Please send an email with any suggestions, comments or questions.

# Background philosophy

In 1961, NASA set out on a mission to send a manned rocket to the moon, Apollo 11, however, the calculations were far too complex to do by hand. As a result, NASA designed the Apollo Guidance Computer to do these calculations. In the modern day, a typical smartphone is millions times faster than NASA's computers were in 1969. Considering all the math NASA had done with these computers to calculate Apollo 11, should programmers today theoretically have mastered the foundational level of scripting and programming that allows them to move on to completing other projects? There is a major incongruence between technology and the global software infrastructure. This infrastructure is primarily not designed for the user as most software focuses on providing solutions for a specific task rather than solutions for it. To illustrate the incongruence, if a programmer were to create a new amazing search algorithm or video game, he or she would have to spend a great amount of time researching solutions for and solving general low-level software development problems before continuing. In order for individuals to progressively build software at a rate consistent with the change in the global software infrastructure, there must exist resources focusing on general user development.



[packaged-utilities]: https://github.com/linux-shell-base/packaged-utilities
[beginners-documentation]: https://github.com/linux-shell-base/beginners-documentation

[wiki]: https://github.com/linux-shell-base/linux-shell-base/wiki
[wiki-Guideline-for-Scripts]: https://github.com/linux-shell-base/linux-shell-base/wiki/Guideline-for-Scripts
[reference-Eric-Raymond-17_Unix_Rules]: https://en.wikipedia.org/wiki/Unix_philosophy#Eric_Raymond.E2.80.99s_17_Unix_Rules
