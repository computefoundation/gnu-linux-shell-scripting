#!/usr/bin/env bash
# 
# Bash string utilities
# 

# General
# --------------------------------------------
  # Repeat the given text N number of times.
  # Usage:
  #   repeatText <text> <repeat count>
  # Options:
  #   -m --max    max repeat count
  repeatText() {
    if [[ "${1}" = '-m' || "${1}" = '--max' ]]; then
      if [[ "${2}" =~ ^[0-9]+$ ]]; then
        local RPT_COUNT_MAX="${2}"
        shift 2
      else
        echo "repeatText: value for option ${1} must be a number"
        return 1
      fi
    fi
    if [ "$#" -eq 2 ]; then
      if [[ "${2}" =~ ^[0-9]+$ && "${2}" -gt 0 ]]; then
        local rptCnt="${2}"
        if [[ -n "${RPT_COUNT_MAX}" && "${RPT_COUNT_MAX}" -ge 0 ]]; then
          [ "${rptCnt}" -gt "${RPT_COUNT_MAX}" ] && rptCnt="${RPT_COUNT_MAX}"
        fi
        for i in $(seq 1 "${rptCnt}"); do
          local retTxt+="${1}"
        done
      fi
    elif [ "$#" -eq 1 ]; then
      retTxt="${1}"
    fi
    echo "${retTxt}"
  }

  # Prepend the given prefix to all delimited substrings in the full string.
  # Example:
  #   prependToSubstrings "semicolon;is;the;delimiter" ';' '&&'
  #   # returns "&&semicolon;&&is;&&the;&&delimiter"
  # Usage:
  #   repeatText <string containing delimiters> <delimiter> <prefix>
  prependToSubstrings() {
    [ "$#" -ne 3 ] && echo "${1}" && return 1
    IFS="${2}"; for str in ${1}; do
        local retTxt+="${3}${str}${2}"; done; unset IFS
    [ ! "${1: -1}" = "${2}" ] && retTxt="${retTxt%${2}}"
    echo "${retTxt}"
  }

