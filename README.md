
<img src='https://raw.githubusercontent.com/unix-foundation/shell/images/logo.png' width='33.5%' align='left' alt='logo.png'>
<br><br><br>

**Shell** is a resource of UNIX-founded solutions for the GNU/Linux shell. It provides shell solutions for free/libre and open source software in multiple paradigms of the application layer.
<br><br><br><br>

# Application layer paradigms

Shell provides solutions for the following application layer paradigms:

## Applications

Solutions for applications

* [RDBMS functions for MySQL](functions_scripts/applications/databases/mysqlutils)
* [NoSQL functions for MongoDB](functions_scripts/applications/databases/mongodbutils)

## Programming languages

Solutions for programming languages

* [Bash array utilities](functions_scripts/programming_languages/bash/arrayutils.bash)
* [Bash date and time utilities](functions_scripts/programming_languages/bash/dateandtimeutils.bash)

## GNU/Linux

Solutions for foundational concepts of the GNU/Linux operating system *(e.g. operating system tools, file, system and window management)*, based on four *super* sections:

#### 1. Main (actions with or without output)

* [Rename all files matching a name recursively.](scripts/gnu-linux-main/file_management/renrec)

#### 2. Output only - single-value (single-value output and no actions)

* [Get the size of one or more files and/or directories as a plain number.](one-liners/one-liners-gnu-linux-output_only-single-value.bash)
* [Get the ID of a window by PID.](scripts/gnu-linux-output_only-single-value/x11/getwindidbypid)

#### 3. Output only - multi-value (multi-value output and no actions)

* [Recursively find and list one or more files.](aliases/aliases-gnu-linux-output_only-multi-value.bash)
* [List all open TCP and UDP ports.](aliases/aliases-gnu-linux-output_only-multi-value.bash)

#### 4. Modules (used in conjuction with command-line programs)

* [Run a command in the background.](scripts/gnu-linux-modules/shell_management/runinbg)
* [Run a command when files have changed in the current directory.](scripts/gnu-linux-modules/file_management/inotify)

## Utilities

Utilities, based on two *super* sections:

#### 1. Main (actions with or without output)

* [Open a new terminal with an initial command.](scripts/utilities-main/general_program_management/newterm)
* [Execute a command in (or run the last command of) a terminal emulator.](scripts/utilities-main/keybind/termcommand)

#### 2. Modules (used in conjuction with command-line programs)

* [Return one or more files for a command using one of two search methods: (1) Locate from a database; (2) Recursively find from the current or specified directory.](scripts/utilities-modules/general_program_management/returnfileforcmd)

---

Shell has an [extension repository for utilities consisting of more than one file](https://github.com/unix-foundation/shell--packaged-utilities).

## Mobile

Solutions for mobile devices, based on two *super* sections:

#### 1. Android (Android devices)

* [Send an sms using an Android device.](scripts/mobile-android/utilities/sms)
* [Watch and print the X and Y screen tap coordinates of an Android device.](scripts/mobile-android/monitoring/getmobiletappos)

#### 2. Generic (generic solutions for mobile devices)

* [Mount and unmount an MTP device.](scripts/mobile-generic/management/mtp)

# Contributing

If you would like to contribute, please ensure that your contribution adheres to the respective [guidelines](https://github.com/unix-foundation/shell/wiki). Here is a list of [needed solutions](https://github.com/unix-foundation/shell/wiki/Needed-solutions); it can be used for ideas.

An alternative implementation to an already existing solution will be accepted only if it has substantial reason, such as using a different dependency or language.

Finally, credits will be placed in the wiki.

Please send an email to main@unixfoundation.org with any suggestions, comments or questions.

Thanks.

# Download essentials

To download the essential solutions, retrieve *download-Shell-essentials.sh* with following command and run it:

```bash
wget https://raw.githubusercontent.com/unix-foundation/shell/download/download-Shell-essentials.sh \
&& chmod +x download-Shell-essentials.sh
```
