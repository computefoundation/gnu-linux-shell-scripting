
# Linux-shell-base

**linux-shell-base** is a resource/reference of solutions to foundational shell scripting problems in Linux. It is a solution for shell scripting problems in the lowest sublayer of the Linux application layer for higher-level shell scripting.

All solutions conform to four principles:

* Solve a problem applicable to a large part of the Linux community.
* Solve a problem that requires a considerable amount of research.
* Adhere to the [UNIX philosophy][reference-Eric-Raymond-17_Unix_Rules].
* Follow a standard [guideline][wiki-Guideline-for-Scripts].

This repository has no build/install automation. All solutions are additionally independent of each other and contained in the following three directories:

### bin/

Scripts.

### one-liners/

One-liners.

*One-liners are similar in concept to solutions in **bin/**, except they are typically not used on their own and instead with completely new solutions. They are also not typically used as aliases.*

### aliases/

Aliases and short functions for bash profiles.

## Examples

Here is a list of some of the scripts in this repository:

* [Run a command in the background (module).][main-modules#shell]
* [Get the ID a window by name, class, PID, etc.][main-info-command-single#x11]
* [Get the ID, name, class, PID, etc. of the active window.][main-info-command-single#x11]
* [Return a file for a command by locating or recursively searching for it (module).][modules#file]
* [Check if a WLAN device is soft blocked.][main-info-command-single#hardware]
* [Open a new terminal and run an initial command in it.][utilities#general]
* [Run a countdown timer in the terminal.][utilities#miscellaneous]
* [Bash utility functions (array, string, http, etc.).][bash_utilities#bash_utilities]
* [Get contact info from an Android device.][android#android]
* [Send an sms using an Android device.][android#android]

## Not Included

The type of solutions this repository does not include are the following:

* File formatting or converting, such as BMP to JPEG or CYMK to RGB colors.
* Text formatting
* OS or application function specific.
* Solutions requiring very little research.

## packaged-utilities Repository

*linux-shell-base* has an extension repository for packaged utilities [here][packaged-utilities].

# Notes

* This repository initially consists of 62 scripts, 52 aliases and short functions and 3 one-liners.

* Each solution is continuously maintained to ensure it conforms to the *linux-shell-base* philosophy and thorougly tested to ensure it is error-free. This is what most of the work consists of. *Solutions are not, however, guaranteed to be error-free.*

* All initial solutions have been created and tested in Bash only *(and not Ksh, Zsh, etc.)*, however, they are updated to be more portable if the changes are significant.

# Contributing

The goal of this repository is to be as comprehensive as possible for the Linux community to benefit from solutions to as many low-level problems as possible. If you would like to contribute a solution that follows the *linux-shell-base* philosophy, please create a [pull request](https://gist.github.com/Chaser324/ce0505fbed06b947d962) or send an email to *linux_user_base@yahoo.com* *(email will be changed soon)*.

Contributed scripts will be looked over and must follow the [*Guideline for Scripts*][wiki-Guideline-for-Scripts]. If a contributed solution uses an alternative method/implementation to an already existing solution, it will be given the same name with an incremented number, ordered by the most commonly accepted method/implementation. Finally, credits will be placed in the Wiki and can identify the user by name, username or URL.

Please send an email with any suggestions, comments or questions.

# Background Philosophy

In 1961, NASA set out on a mission to send a manned rocket to the moon, Apollo 11, however, the calculations were far too complex to do by hand. As a result, NASA designed the Apollo Guidance Computer to do these calculations. In the modern day, a typical smartphone is millions times faster than NASA's computers were in 1969. Considering all the math NASA had done with these computers to calculate Apollo 11, should programmers today theoretically have mastered the foundational level of scripting and programming that allows them to move on to completing other projects? There is a major incongruence between technology and the global software infrastructure. This infrastructure is primarily not designed for the user as most software focuses on providing solutions for a specific task rather than solutions for it. To illustrate the incongruence, if a programmer were to create a new amazing search algorithm or video game, he or she would have to spend a great amount of time researching solutions for and solving general low-level software development problems before continuing. In order for individuals to progressively build software at a rate consistent with the change in the global software infrastructure, there must exist resources that focus on all aspects of it.



[packaged-utilities]: https://github.com/linux-shell-base/packaged-utilities
[main-info-command-single#x11]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/main-info-command-single#x11
[main-modules#shell]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/main-modules#shell
[modules#file]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/modules#file
[main-info-command-single#hardware]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/main-info-command-single#hardware
[utilities#general]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/utilities#general
[utilities#miscellaneous]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/utilities#miscellaneous
[bash_utilities#bash_utilities]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/bash_utilities#bash_utilities
[android#android]: https://github.com/linux-shell-base/linux-shell-base/tree/master/bin/android#android

[wiki-Guideline-for-Scripts]: https://github.com/linux-shell-base/linux-shell-base/wiki/Guideline-for-Scripts

[reference-Eric-Raymond-17_Unix_Rules]: https://en.wikipedia.org/wiki/Unix_philosophy#Eric_Raymond.E2.80.99s_17_Unix_Rules
