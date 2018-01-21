
<img src='https://raw.githubusercontent.com/unixfoundation/shell/images/logo.png' width='33.5%' align='left' alt='logo.png'>
<br><br>

**Shell** is a resource of Unix-founded solutions for the shell in multiple paradigms of the application layer.
<br><br><br><br><br>

# Application layer paradigms

Shell provides solutions in the following application layer paradigms:

## Applications

Solutions for applications

* [Generic RDBMS utility functions for a MySQL database](functions_scripts/applications/database/mysqldbutils)
* [Check if a PostgreSQL database exists.](one-liners/applications/database/postgresql-database.one-liners)

## Programming languages

Solutions for programming languages

* [Bash array utilities](functions_scripts/programming_languages/bash/arrayutils.bash)
* [Bash date and time utilities](functions_scripts/programming_languages/bash/dateandtimeutils.bash)

## GNU/Linux

Solutions based on core aspects of the GNU/Linux operating system *(file, system and X11 management, operating system tools, etc.)*, based on three *super* sections:

### 1. Main - performing an action

* [Recursively rename all files matching a name.](scripts/gnulinux--main/file_management/recren)

### 2. Output - providing output only (no actions performed)

* [Get the number of megabytes of one or more files and/or directories.](one-liners/gnulinux--output/file_management/general-file-management.one-liners)
* [Get the ID of a window by PID.](scripts/gnulinux--output/x11_management/getwindidbypid)

### 4. Modules - used in conjuction with command-line programs

* [Execute a command in the background.](scripts/gnulinux--modules/shell_management/execinbg)
* [Execute a command when a file has changed in the current directory.](scripts/gnulinux--modules/file_management/execonfilechange)

## Utilities

Solutions performing a utility function, based on two *super* sections:

### 1. Main - performing an action

* [Execute a command in a new terminal emulator.](scripts/utilities--main/general_program_management/execinnewterm)
* [Recursively replace a string in all files.](scripts/utilities--main/general_text_manipulation/recrep)

### 2. Modules - used in conjuction with command-line programs

* [Recursively find a file or directory for a command.](scripts/utilities--modules/general_program_management/findfileforcmd)

---

Shell has an [extension repository for utilities consisting of more than one file](https://github.com/unixfoundation/shell.packaged-utilities).

## Mobile

Solutions for mobile devices, based on two *super* sections:

### 1. Android - for Android devices

* [Send an sms using an Android device.](scripts/mobile--android/utilities/sendsms)
* [Watch and print the X and Y screen tap coordinates of an Android device.](scripts/mobile--android/hardware_management/getmobilescreentappos)

### 2. Generic - for all mobile devices

* [Mount and unmount an MTP device.](scripts/mobile--generic/management/mntmtp)

# Contributing

If you would like to contribute, please ensure that your contribution adheres to the respective [guideline](https://github.com/unixfoundation/shell/wiki). Here is a list of [needed solutions](https://github.com/unixfoundation/shell/wiki/Needed-solutions); it can be used for ideas.

An alternative implementation to an already existing solution will be accepted only if it has substantial reason, such as using a different dependency or language.

Finally, credits will be placed in the wiki.

Please send an email to main@unixfoundation.org with any suggestions, comments or questions.

Thanks.

