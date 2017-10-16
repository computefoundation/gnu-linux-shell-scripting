# one-liners-main-without_output.bash
# 
# Sections:
#    1.   Hardware
# 

# ======= 1.  HARDWARE =========================================

# Note: Hardware one-liners are intended to be system-independent, however, some may not work for certain systems.

# Set the backlight level.
# Note: The interface to the ACPI kernel module for video (e.g. intel_backlight) can be found with "ls /sys/class/backlight/".
tee /sys/class/backlight/intel_backlight/brightness <<< <backlight level>

