
# Linux-shell-base

**linux-shell-base** is a resource of solutions to universal low-level shell scripting problems in Linux created with a UNIX-centric methodology. It is for new Linux users learning to solve low-level shell scripting problems and individuals seeking UNIX-centric solutions to low-level problems for higher-level shell scripting.

All solutions in this repository conform to four principles:

* Apply to a large part of the Linux community.
* Use a reusable and UNIX-centric methodology.
* Use universal scripting techniques and methodologies and follow a standard [guideline][wiki-Guideline-for-Scripts].
* Solve a problem requiring a considerable amount of research.

This repository has no build/install automation as it provides low-level solutions in multiple paradigms of the Linux application layer (see the bin/ directory). All solutions are additionally independent of each other.

These are the three directories this repository consists of:

### bin/

Scripts.

### one-liners/

One-liners *(following [this guideline][wiki-Guideline-for-One-Liners])*.

These solutions are similar to those in **bin/**, however, they are typically not used on their own and rather as a reference for new solutions. They are also typically not used as aliases.

### aliases/

Aliases and short functions *(following [this guideline][wiki-Guideline-for-Aliases])*.

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

Here is a list of the type of solutions this repository does not contain:

* File formatting or converting, such as BMP to JPEG or CYMK to RGB colors.
* Text formatting
* OS or application function specific.
* Solutions requiring very little research.

## packaged-utilities Repository

**linux-shell-base** has an extension repository for packaged utilities [here][packaged-utilities].

# Notes

* This repository initially consists of 62 scripts, 2 files containing one-liners and 2 files containing aliases.

* Each solution in this repository is continuously maintained to ensure it conforms to the *linux-shell-base* philosophy and thorougly tested to ensure it is error-free. This is what most of the work consists of. *Solutions are not, however, guaranteed to be error-free.*

* All initial solutions have been created and tested in Bash only *(and not Ksh, Zsh, etc.)*, however, they are updated to be made as portable as possible.

# Contributing

The goal of this repository is to be as comprehensive as possible. Contributions are therefore welcome. If you would like to contribute a solution that follows the linux-shell-base philosophy, please create a [pull request](https://gist.github.com/Chaser324/ce0505fbed06b947d962) or send an email to *linux_user_base@yahoo.com* (email will be changed soon).

Credits will be placed in the wiki and can identify the user in any way he or she likes, including name, username or URL. Contributed scripts will be looked over and should follow the [*Guideline for Scripts*][wiki-Guideline-for-Scripts].

If a contributed script provides the same solution as another using an alternative implementation, it will be given the same base name with an incremented number. Files with the same base name are ordered by the most commonly accepted method.

Please feel free to send emails with suggestions, comments or questions.

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

[wiki-Guideline-for-Aliases]: https://github.com/linux-shell-base/linux-shell-base/wiki/Guideline-for-Aliases
[wiki-Guideline-for-One-Liners]: https://github.com/linux-shell-base/linux-shell-base/wiki/Guideline-for-One-Liners
[wiki-Guideline-for-Scripts]: https://github.com/linux-shell-base/linux-shell-base/wiki/Guideline-for-Scripts
