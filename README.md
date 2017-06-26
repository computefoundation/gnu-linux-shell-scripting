
# Linux-shell-base

**Linux-shell-base** is a resource of standard low-level shell solutions within the Linux application layer. Its purpose is to advance general development within the Linux community through a foundational approach to [the philosophy of computing](https://en.wikipedia.org/wiki/Unix_philosophy#The_UNIX_Programming_Environment).

All solutions in this repository conform to four principles:

* Solve a fundamental problem within the Linux community.
* Use a standard and widely accepted approach.
* Comply with the [UNIX philosophy][reference-Eric-Raymond-17_Unix_Rules] and standard scripting rules.
* Require a considerable amount of research.

*Linux-shell-base* is not a framework and has no build or install automation. Its solutions additionally conform to the respective [guideline][wiki], are independent of each other and exist in three directories:

### bin/

Scripts.

### one-liners/

One-liners.

### aliases/

Aliases and short functions for bash profiles.

## Examples

This repository contains the following solutions among others:

* [Run a command in the background (module).][main-modules#shell]
* [Get the ID a window by name, class, PID, etc.][output-program-single#x11]
* [Get the ID, name, class, PID, etc. of the active window.][output-program-single#x11]
* [Return a file for a command by either locating or recursively searching for it (module).][modules#file]
* [Get the size of a file or directory as a plain number.][output-program-single#file]
* [Check if the primary wireless local area network device is soft blocked.][output-program-single#hardware]
* [Open a new terminal and optionally run an initial command in it.][utilities#general]
* [Run a countdown timer in the terminal.][utilities#miscellaneous]
* [Bash utility functions (array, string, http, etc.).][bash_utilities#bash_utilities]
* [Get contact info from an Android device.][android#android]
* [Send an sms using an Android device.][android#android]
* [Generic utility functions for MySQL.][3rd_party_applications#database]

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

* All initial solutions have been created and tested in Bash only *(and not Ksh, Zsh, etc.)* and were created with only slight attention to portability, however, they are updated to be more portable if changes are significant.

# Contributing

The goal of this repository is to be as comprehensive as possible. If you would like to contribute a solution, please create a [pull request](https://gist.github.com/Chaser324/ce0505fbed06b947d962) or send an email to *linuxshellbase@yahoo.com*.

If a contributed solution is an alternative method/implementation to an already existing one, it will be given the same name with an incremented number, ordered by the most commonly accepted method/implementation. Finally, credits will be placed in the wiki and can identify the user by name, username or URL.

Please send an email with any suggestions, comments or questions.

# Background philosophy

In 1961, NASA set out on a mission to send a manned rocket to the moon, Apollo 11, however, the calculations were far too complex to do by hand. As a result, NASA designed the Apollo Guidance Computer to do these calculations. In the modern day, a typical smartphone is millions times faster than NASA's computers were in 1969. Considering all the math NASA had done with these computers to calculate Apollo 11, should programmers today theoretically have mastered the foundational level of scripting and programming that allows them to move on to completing other projects? There is a major incongruence between technology and the global software infrastructure. This infrastructure is primarily not designed for the user as most software focuses on providing solutions for a specific task rather than solutions for it. To illustrate the incongruence, if a programmer were to create a new amazing search algorithm or video game, he or she would have to spend a great amount of time researching solutions for and solving general low-level software development problems before continuing. In order for individuals to progressively build software at a rate consistent with the change in the global software infrastructure, there must exist resources focusing on general user development.



[3rd_party_applications#database]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/3rd_party_applications#database
[bash_utilities#bash_utilities]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/bash_utilities#bash_utilities
[android#android]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/android#android
[main-modules#shell]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/main-modules#shell
[modules#file]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/modules#file
[output-program-single#file]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/output-program-single#file
[output-program-single#hardware]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/output-program-single#hardware
[output-program-single#x11]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/output-program-single#x11
[utilities#general]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/utilities#general
[utilities#miscellaneous]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/utilities#miscellaneous

[packaged-utilities]: https://github.com/linux-shell-base/packaged-utilities
[beginners-documentation]: https://github.com/linux-shell-base/beginners-documentation

[wiki]: https://github.com/linux-shell-base/linux-shell-base/wiki
[wiki-Guideline-for-Scripts]: https://github.com/linux-shell-base/linux-shell-base/wiki/Guideline-for-Scripts
[reference-Eric-Raymond-17_Unix_Rules]: https://en.wikipedia.org/wiki/Unix_philosophy#Eric_Raymond.E2.80.99s_17_Unix_Rules
