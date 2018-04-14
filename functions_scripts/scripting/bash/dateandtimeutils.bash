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
  # Convert seconds to milliseconds with decimal precision.
  # Usage:
  #   secondsToMillisecondsDecimal <seconds>
  secondsToMillisecondsDecimal() {
    printf '%.4f' "$(bc <<< "${1}*1000")"
  }

  # Convert seconds to milliseconds.
  # Usage:
  #   secondsToMilliseconds <seconds>
  # Notes:
  #   The number is rounded to the nearest tenths place using half toward zero
  #   rounding mode. 
  secondsToMilliseconds() {
    printf '%.0f' "$(secondsToMillisecondsDecimal "${1}")"
  }

  # Convert seconds to microseconds with decimal precision.
  # Usage:
  #   secondsToMicrosecondsDecimal <seconds>
  secondsToMicrosecondsDecimal() {
    printf '%.4f' "$(bc <<< "${1}*1000000")"
  }

  # Convert seconds to microseconds.
  # Usage:
  #   secondsToMicroseconds <seconds>
  # Notes:
  #   The number is rounded to the nearest tenths place using half toward zero
  #   rounding mode. 
  secondsToMicroseconds() {
    printf '%.0f' "$(secondsToMicrosecondsDecimal "${1}")"
  }

