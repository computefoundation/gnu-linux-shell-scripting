
# Linux-shell-base

**linux-shell-base** is a resource of standard solutions to low-level shell scripting problems in the Linux application layer as an approach to [the philosophy of computing](https://en.wikipedia.org/wiki/Unix_philosophy#The_UNIX_Programming_Environment). These are solutions to common shell scripting problems within the Linux community.

All solutions conform to four principles:

* Solve a problem applicable to a large number of Linux users.
* Use a standard approach.
* Comply with the [UNIX philosophy][reference-Eric-Raymond-17_Unix_Rules] and standard scripting rules.
* Require a considerable amount of research.

This repository has no build/install automation. All solutions are independent of each other, strictly conform to the respective [guideline][wiki] and exist in the following three directories:

### bin/

Scripts.

### one-liners/

One-liners.

*One-liners are similar in concept to the solutions in **bin/** except they are not typically used independently and instead to extend new solutions. They are also not commonly used as aliases.*

### aliases/

Aliases and short functions for bash profiles.

## Examples

A list of some of the scripts in this repository:

* [Run a command in the background (module).][main-modules#shell]
* [Get the ID a window by name, class, PID, etc.][main-info-command-single#x11]
* [Get the ID, name, class, PID, etc. of the active window.][main-info-command-single#x11]
* [Return a file for a command by locating or recursively searching for it (module).][modules#file]
* [Check if a WLAN device is soft blocked.][main-info-command-single#hardware]
* [Open a new terminal and optionally run an initial command in it.][utilities#general]
* [Run a countdown timer in the terminal.][utilities#miscellaneous]
* [Bash utility functions (array, string, http, etc.).][bash_utilities#bash_utilities]
* [Get contact info from an Android device.][android#android]
* [Send an sms using an Android device.][android#android]

## Not Included

The type of solutions this repository does not include:

* File formatting or converting *(e.g. BMP to JPEG or CYMK colors to RGB colors)*.
* Text formatting
* OS or application function specific.
* Requiring very little research.

## Packaged Utilities

linux-shell-base has an [extension repository for packaged utilities][packaged-utilities].

## Beginner's Documentation

linux-shell-base has a [repository providing documentation for new Linux users][beginners-documentation].

# Notes

* This repository initially (and currently) consists of 62 scripts, 52 aliases and short functions and 3 one-liners created over two years and standardized for three months in preparation for this repository.

* All initial solutions have been created and tested in Bash only *(not Ksh, Zsh, etc.)* and were created with only slight attention to portability, however, they are updated to be more portable if changes are significant.

# Contributing

The goal of this repository is to be as comprehensive as possible. If you would like to contribute a solution, please create a [pull request](https://gist.github.com/Chaser324/ce0505fbed06b947d962) or send an email to *linuxshellbase@yahoo.com*.

If a contributed solution is an alternative method/implementation to an already existing one, it will be given the same name with an incremented number, ordered by the most commonly accepted method/implementation. Finally, credits will be placed in the wiki and can identify the user by name, username or URL.

Please send an email with any suggestions, comments or questions.

# Background Philosophy

In 1961, NASA set out on a mission to send a manned rocket to the moon, Apollo 11, however, the calculations were far too complex to do by hand. As a result, NASA designed the Apollo Guidance Computer to do these calculations. In the modern day, a typical smartphone is millions times faster than NASA's computers were in 1969. Considering all the math NASA had done with these computers to calculate Apollo 11, should programmers today theoretically have mastered the foundational level of scripting and programming that allows them to move on to completing other projects? There is a major incongruence between technology and the global software infrastructure. This infrastructure is primarily not designed for the user as most software focuses on providing solutions for a specific task rather than solutions for it. To illustrate the incongruence, if a programmer were to create a new amazing search algorithm or video game, he or she would have to spend a great amount of time researching solutions for and solving general low-level software development problems before continuing. In order for individuals to progressively build software at a rate consistent with the change in the global software infrastructure, there must exist resources focusing on all aspects of user development.



[packaged-utilities]: https://github.com/linux-shell-base/packaged-utilities
[beginners-documentation]: https://github.com/linux-shell-base/beginners-documentation

[main-info-command-single#x11]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/main-info-command-single#x11
[main-modules#shell]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/main-modules#shell
[modules#file]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/modules#file
[main-info-command-single#hardware]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/main-info-command-single#hardware
[utilities#general]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/utilities#general
[utilities#miscellaneous]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/utilities#miscellaneous
[bash_utilities#bash_utilities]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/bash_utilities#bash_utilities
[android#android]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/android#android

[wiki]: https://github.com/linux-shell-base/linux-shell-base/wiki
[wiki-Guideline-for-Scripts]: https://github.com/linux-shell-base/linux-shell-base/wiki/Guideline-for-Scripts

[reference-Eric-Raymond-17_Unix_Rules]: https://en.wikipedia.org/wiki/Unix_philosophy#Eric_Raymond.E2.80.99s_17_Unix_Rules
