# one-liners-gnu-linux-output_only-single-value.bash
# 
# Sections:
#    1.   File management
#    2.   Hardware management
# 

# ======= 1.  FILE MANAGEMENT ==================================

# Get the size in megabytes of one or more files and/or directories as a plain number.
du -csm <files and/or directories> | tail -1 | awk '{ print $1 }'

# ======= 2.  HARDWARE MANAGEMENT ==============================

# Note: Hardware management one-liners are intended to be distribution-independent, however, some may not work for
#   certain distributions.

# Get the maximum backlight level.
# Note: The interface to the ACPI kernel module for video (e.g. intel_backlight) can be found by running
#   "ls /sys/class/backlight/".
cat /sys/class/backlight/intel_backlight/max_brightness

