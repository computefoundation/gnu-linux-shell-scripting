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
  # Generate a random date between two dates specified by year and optionally
  # month, day of month and hour and output in ISO 8601 format (e.g.
  # "2004-04-25T16:18:13.489392193").
  # Usage:
  #   generateRandomDate <min and max date entities>
  #       min and max date entities: format in "YY(min),YY(max),[MM(min),
  #         MM(max),[DD(min),DD(max),[hh(min),hh(max)]]]"
  # Examples:
  #   generateRandomDate '05,09,04,11,15,31'
  #   # "2007-04-25T16:18:13.489392193"
  #   generateRandomDate '42,56,09,10,03,08,19,22'
  #   # "2045-10-07T22:33:42.730192851"
  # Options:
  #   -t     get date as timestamp in the fomat [[CC]YY]MMDDhhmm[.ss]
  # Notes:
  #   -All generated years are within the century defined by
  #    DFLT_CENTURY_PREFIX.
  #   -Each date entity is inclusive of the previous entity (e.g. if the max
  #    hour is 15, the max time with minutes can be 15:59).
  generateRandomDate() {
    local DFLT_CENTURY_PREFIX='21'
    local OPT OPTIND
    getopts :t OPT
    shift $((OPTIND - 1))
    # redirect all output to >/dev/tty so errors will be printed to the terminal
    # when this function is used in a subprocess.
    exec 3>&1 4>&2; exec >/dev/tty 2>&1
    local regx='^[0-9]{1,2},[0-9]{1,2}(,[0-9]{1,2},[0-9]{1,2}(,[0-9]{1,2},[0-9]'
    regx+='{1,2}(,[0-9]{1,2},[0-9]{1,2})?)?)?$'
    if [[ ! "${1}" =~ ${regx} ]]; then
      local errMsg='generateRandomDate: first argument must be in the format'
      errMsg+=' YY(min),YY(max),[MM(min),MM(max),[DD(min),DD(max),[hh(min),'
      errMsg+='hh(max)]]]'
      echo "${errMsg}" 1>&2
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
    if [ "${ENT[2]}" -gt 12 ] || [ "${ENT[3]}" -gt 12 ] || [ "${ENT[2]}" -eq 0 \
        ] || [ "${ENT[3]}" -eq 0 ]; then
      echo 'generateRandomDate: MM(min) and MM(max) must be in the range 1 <='\
          'x <= 12' 1>&2
      return 1
    elif [ "${ENT[4]}" -gt 31 ] || [ "${ENT[5]}" -gt 31 ] || [ "${ENT[4]}" -eq \
        0 ] || [ "${ENT[5]}" -eq 0 ]; then
      echo 'generateRandomDate: DD(min) and DD(max) must be in the range 1 <='\
          'x <= 31' 1>&2
      return 1
    elif [ "${ENT[6]}" -ge 24 ] || [ "${ENT[7]}" -ge 24 ]; then
      echo 'generateRandomDate: hh(min) and hh(max) must be less than 24' 1>&2
      return 1
    elif [ "${ENT[0]}" -gt "${ENT[1]}" ] || [ "${ENT[2]}" -gt "${ENT[3]}" ] || \
        [ "${ENT[4]}" -gt "${ENT[5]}" ] || [ "${ENT[6]}" -gt "${ENT[7]}" ]; then
      echo 'generateRandomDate: ranges must be YY(min)<=YY(max),'\
          'MM(min)<=MM(max), DD(min)<=DD(max), hh(min)<=hh(max)' 1>&2
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
    if [ "${OPT}" = 't' ]; then
      local out="${DFLT_CENTURY_PREFIX}${year}${month}${day}${hour}${minute}"
      out+=".${second}"
    else
      local out="${DFLT_CENTURY_PREFIX}${year}-${month}-${day}T${hour}"
      out+=":${minute}:${second}.${nanosecond}"
    fi
    exec >&3 2>&4
    echo "${out}"
  }

