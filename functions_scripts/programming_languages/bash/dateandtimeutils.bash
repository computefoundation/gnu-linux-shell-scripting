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

# Random generation
# --------------------------------------------
  # Generate a random date between two dates specified by year and optionally
  # month, day of month and hour and output as one of the following:
  #   -A date in ISO-8601 format (e.g. 2004-04-25T16:18:13.489392193; default)
  #   -A Unix timestamp in seconds
  #   -A timestamp in the fomat [[CC]YY]MMDDhhmm[.ss]
  # Usage:
  #   generateRandomDate <minimum/maximum date entities>
  #       <minimum/maximum date entities> format:
  #         yyyy(min),yyyy(max)[,MM(min),MM(max)[,dd(min),dd(max)[,hh(min),
  #         hh(max)]]]
  # Examples:
  #   generateRandomDate '1942,1956,09,10,03,08,19,22'
  #   # output: "1945-10-06T21:33:42.730192851"
  #   generateRandomDate -u '2005,2009,04,11,15,31'
  #   # output: "1227236576"
  # Options:
  #   -u    return a Unix timestamp in seconds
  #   -t    return a timestamp in the fomat [[CC]YY]MMDDhhmm[.ss]
  # Note:
  #   The time of each date entity is inclusive of the previous entity (e.g. if
  #   the maximum hour is 15, the maximum time in hours and minutes is 15:59).
  generateRandomDate() {
    local OPT OPTIND OPTS
    while getopts :ut OPT; do OPTS+="${OPT}"; done
    shift $((OPTIND - 1))
    # redirect all output to >/dev/tty to print errors to the terminal when this
    # function is used in a subprocess
    exec 3>&1 4>&2; exec >/dev/tty 2>&1
    local regx='^[0-9]{1,4},[0-9]{1,4}(,[0-9]{1,2},[0-9]{1,2}(,[0-9]{1,2},[0-9]'
    regx+='{1,2}(,[0-9]{1,2},[0-9]{1,2})?)?)?$'
    if [[ ! "${1}" =~ ${regx} ]]; then
      local errMsg='generateRandomDate: first argument must be in the format'
      errMsg+=' yyyy(min),yyyy(max)[,\n  MM(min),MM(max)[,dd(min),dd(max)[,'
      errMsg+='hh(min),hh(max)]]]'
      echo -e "${errMsg}" 1>&2
      return 1
    fi
    local vals=(${1//,/ })
    local ENT=()
    ENT+=($((10#"${vals[0]}")))
    ENT+=($((10#"${vals[1]}")))
    [ "${#vals[@]}" -gt 2 ] && ENT+=("${vals[2]}") || ENT+=('1')
    [ "${#vals[@]}" -gt 2 ] && ENT+=("${vals[3]}") || ENT+=('12')
    [ "${#vals[@]}" -gt 4 ] && ENT+=("${vals[4]}") || ENT+=('1')
    [ "${#vals[@]}" -gt 4 ] && ENT+=("${vals[5]}") || ENT+=('31')
    [ "${#vals[@]}" -gt 6 ] && ENT+=("${vals[6]}") || ENT+=('0')
    [ "${#vals[@]}" -gt 6 ] && ENT+=("${vals[7]}") || ENT+=('23')
    if [ "${ENT[2]}" -gt 12 ] || [ "${ENT[3]}" -gt 12 ] || [ "${ENT[2]}" \
        -eq 0 ] || [ "${ENT[3]}" -eq 0 ]; then
      echo 'generateRandomDate: MM(min) and MM(max) must be in the range 1 <='\
          'x <= 12' 1>&2
      return 1
    elif [ "${ENT[4]}" -gt 31 ] || [ "${ENT[5]}" -gt 31 ] || [ "${ENT[4]}" \
        -eq 0 ] || [ "${ENT[5]}" -eq 0 ]; then
      echo 'generateRandomDate: dd(min) and dd(max) must be in the range 1 <='\
          'x <= 31' 1>&2
      return 1
    elif [ "${ENT[6]}" -ge 24 ] || [ "${ENT[7]}" -ge 24 ]; then
      echo 'generateRandomDate: hh(min) and hh(max) must be less than 24' 1>&2
      return 1
    elif [ "${ENT[0]}" -gt "${ENT[1]}" ] || [ "${ENT[2]}" -gt "${ENT[3]}" ] || \
        [ "${ENT[4]}" -gt "${ENT[5]}" ] || [ "${ENT[6]}" -gt "${ENT[7]}" ]; then
      echo 'generateRandomDate: ranges must be yyyy(min)<=yyyy(max),'\
          'MM(min)<=MM(max), dd(min)<=dd(max), hh(min)<=hh(max)' 1>&2
      return 1
    fi
    local year="$(printf "%02d" "$(shuf -i "${ENT[0]}"-"${ENT[1]}" -n 1)")"
    local month="$(printf "%02d" "$(shuf -i "${ENT[2]}"-"${ENT[3]}" -n 1)")"
    local day="$(printf "%02d" "$(shuf -i "${ENT[4]}"-"${ENT[5]}" -n 1)")"
    case "${month}" in
      '02') [ "${day}" -gt 28 ] && day=28;;
      '04'|'06'|'09'|'11') [ "${day}" -gt 30 ] && day=30;;
    esac
    local hour="$(printf "%02d" "$(shuf -i "${ENT[6]}"-"${ENT[7]}" -n 1)")"
    local minute="$(printf "%02d" "$(shuf -i 0-59 -n 1)")"
    local second="$(printf "%02d" "$(shuf -i 0-59 -n 1)")"
    local nanosecond="$(printf "%09d" "$(shuf -i 0-999999999 -n 1)")"
    exec >&3 2>&4
    local iso8601Date="${year}-${month}-${day}T${hour}:${minute}:${second}"
    iso8601Date+=".${nanosecond}"
    if [ -n "${OPTS}" ] && [ -z "${OPTS##*u*}" ]; then
      date --utc --date="${iso8601Date}" +"%s"
    elif [ -n "${OPTS}" ] && [ -z "${OPTS##*t*}" ]; then
      echo "${year}${month}${day}${hour}${minute}.${second}"
    else
      echo "${iso8601Date}"
    fi
  }

