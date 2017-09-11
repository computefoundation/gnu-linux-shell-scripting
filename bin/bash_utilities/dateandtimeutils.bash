#!/usr/bin/env bash
# 
# Bash date and time utilities
# 

# Conversion
# --------------------------------------------
  # Format number of seconds (using either an integer or decimal) to millseconds
  # as a decimal.
  # Usage:
  #   secondsToMillisecondsDecimal <seconds>
  secondsToMillisecondsDecimal() {
    printf '%.4f' "$(bc <<< "${1}*1000")"
  }

  # Format number of seconds (using either an integer or decimal) to millseconds
  # as an integer rounded to the nearest tenths place (using round half towards
  # zero mode).
  # Usage:
  #   secondsToMilliseconds <seconds>
  secondsToMilliseconds() {
    printf '%.0f' "$(secondsToMillisecondsDecimal "${1}")"
  }

# Value generation
# --------------------------------------------
  # Generate a random date between two dates specified by year, month and hour
  # and output in ISO 8601 format (e.g. "2004-02-25T16:18:13.489392193").
  # Notes:
  #   -All generated years are within the century defined by
  #    DFLT_CENTURY_PREFIX.
  #   -Date entites are inclusive of the previous entity, meaning the date/time
  #    up until the next year/month/hour may be used (e.g. if the max hour is
  #    15, the max time can be 15:59).
  # Usage:
  #   generateRandomDate <min/max date entities>
  #       min/max date entities: format in "YY[min],YY[max],MM[min],MM[max],
  #                              HH[min],HH[max]" (e.g. "02,06,01,08,15,19").
  # Options:
  #   -t    get date as timestamp in the fomat [[CC]YY]MMDDhhmm[.ss]
  generateRandomDate() {
    local DFLT_CENTURY_PREFIX='21'
    local OPT OPTIND
    getopts :t OPT
    shift $((OPTIND - 1))
    # redirect all output to >/dev/tty so errors will be printed to the terminal
    # when this function is used in a subprocess.
    exec 3>&1 4>&2; exec >/dev/tty 2>&1
    if [[ ! "${1}" =~ \
        [0-9]{1,2},[0-9]{1,2},[0-9]{1,2},[0-9]{1,2},[0-9]{1,2},[0-9]{1,2} ]]
    then
      echo 'generateRandomNumber (err): first argument must be in the format'\
          'YY[min],YY[max],MM[min],MM[max],HH[min],HH[max]' 1>&2
      return 1
    fi
    local vals=(${1//,/ })
    for val in "${vals[@]}"; do
      local ENT+=($((10#$val)))
    done
    if [[ "${ENT[0]}" -gt "${ENT[1]}" || "${ENT[2]}" -gt "${ENT[3]}" || \
        "${ENT[4]}" -gt "${ENT[5]}" ]]; then
      echo 'generateRandomNumber (err): invalid ranges; should be'\
          'YY[min]<=YY[max], MM[min]<=MM[max], HH[min]<=HH[max]' 1>&2
      return 1
    fi
    local year="$(printf "%02d" "$(shuf -i "${ENT[0]}"-"${ENT[1]}" -n 1)")"
    local month="$(printf "%02d" "$(shuf -i "${ENT[2]}"-"${ENT[3]}" -n 1)")"
    case "${month}" in
      2) local monthDayMax=28;;
      4|6|9|11) local monthDayMax=30;;
      *) local monthDayMax=31;;
    esac
    local day="$(printf "%02d" "$(shuf -i 1-${monthDayMax} -n 1)")"
    local hour="$(printf "%02d" "$(shuf -i "${ENT[4]}"-"${ENT[5]}" -n 1)")"
    local minute="$(printf "%02d" "$(shuf -i 0-59 -n 1)")"
    local second="$(printf "%02d" "$(shuf -i 0-59 -n 1)")"
    local nanosecond="$(printf "%09d" "$(shuf -i 0-999999999 -n 1)")"
    if [ "${OPT}" = 't' ]; then
      local out="${DFLT_CENTURY_PREFIX}${year}${month}${day}${hour}${minute}.${second}"
    else
      local out="${DFLT_CENTURY_PREFIX}${year}-${month}-${day}T${hour}:${minute}:"
      out+="${second}.${nanosecond}"
    fi
    exec >&3 2>&4
    echo "${out}"
  }

