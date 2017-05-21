
# bin/

Directories are divided by different paradigms of the Linux application layer.

## 3rd_party

General solutions for third party applications (e.g. mysql).

## android

General solutions for Android devices.

## bash_utilities

Well-tested and formatted bash utility functions.

## main

Scripts for different aspects of the application layer (e.g. file, hardware, networking, x11), divided into sections based on type.

### action

Scripts performing an action, divided into two subsections: (1) **no-output**: actions with no output; (2) **output**: actions with output.

### info

Scripts providing information only (no actions performed), divided into two subsections: (1) **command**: information (values) for commands, divided into two subsubsections: ***multi***: multi-value output; ***single***: single-value output. (2) **user**: information for the user.

### modules

Scripts used in conjuction with a command.

## mobile

General solutions for mobile devices.

## modules

Scripts used in conjuction with a command. This is similar to **main-modules** except these modules perform more complete or complex actions for a command.

## utilities

Low-level utilities.
