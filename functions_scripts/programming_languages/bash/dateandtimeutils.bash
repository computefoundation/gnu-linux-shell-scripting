#!/usr/bin/env bash
# 
# File:
#   dateandtimeutils.bash
# 
# Description:
#   Bash date and time utilities
# 

# Conversion
# --------------------------------------------
  # Convert a time in seconds (using either an integer or decimal) to
  # millseconds as a decimal.
  # Usage:
  #   secondsToMillisecondsDecimal <seconds>
  secondsToMillisecondsDecimal() {
    printf '%.4f' "$(bc <<< "${1}*1000")"
  }

  # Convert a time in seconds (using either an integer or decimal) to
  # millseconds as an integer rounded to the nearest tenths place (using round
  # half towards zero mode).
  # Usage:
  #   secondsToMilliseconds <seconds>
  secondsToMilliseconds() {
    printf '%.0f' "$(secondsToMillisecondsDecimal "${1}")"
  }

