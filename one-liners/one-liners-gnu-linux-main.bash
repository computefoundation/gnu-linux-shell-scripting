# one-liners-gnu-linux-main.bash
# 
# Sections:
#    1.   Hardware management
# 

# ======= 1.  HARDWARE MANAGEMENT ==============================

# Note: Hardware management one-liners are intended to be distribution-independent, however, some may not work for
#   certain distributions.

# Set the backlight level.
# Note: The interface to the ACPI kernel module for video (e.g. intel_backlight) can be found by running
#   "ls /sys/class/backlight/".
tee /sys/class/backlight/intel_backlight/brightness <<< <backlight level>

