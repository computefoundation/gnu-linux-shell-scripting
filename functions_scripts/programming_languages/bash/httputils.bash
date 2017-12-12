#!/usr/bin/env bash
# 
# File:
#   httputils.bash
# 
# Description:
#   Bash HTTP utilities
# 

# This regex only ensures that the URL contains safe characters.
URL_REGEX='[-A-Za-z0-9+&@#\/%?=~_|!:,.;]*[-A-Za-z0-9+&@#\/%=~_|]'

PROTOCOLS_REGEX='https?|ftp|file'

# Validation
# --------------------------------------------
  # Check if a string is a valid URL.
  # Usage:
  #   isUrl <string to check>
  # Options:
  #   -p    check that the string contains one of the protocols in
  #         PROTOCOLS_REGEX; if not used, the string is validated only with
  #         URL_REGEX.
  isUrl() {
    local OPT OPTIND
    getopts :p OPT
    shift $((OPTIND-1))
    [ "${OPT}" = 'p' ] && local urlRegex="((${PROTOCOLS_REGEX})://)"
    local urlRegex+="${URL_REGEX}$"
    urlRegex="^${urlRegex}"
    [[ "${1}" =~ ${urlRegex} ]] && return 0 || return 1
  }

  # Check if a string is a valid website URL.
  # Usage:
  #   isWebsiteUrl <string to check>
  # Options:
  #   -p    check that the string contains the "http[s]://" protocol prefix; if
  #         not used, it is only validated with URL_REGEX and checked to begin
  #         with "www." and contain a dot (and not at the beginning or end).
  isWebsiteUrl() {
    local OPT OPTIND
    getopts :p OPT
    shift $((OPTIND-1))
    [ "${OPT}" = 'p' ] && local urlRegex="(https?://)"
    local urlRegex+="(www\.)"
    urlRegex="^${urlRegex}"
    # comment the following assignment statement to not check if the URL
    # contains a dot
    urlRegex+="[-A-Za-z0-9+&@#\/%?=~_|!:,;]+[.]"
    urlRegex+="${URL_REGEX}$"
    [[ "${1}" =~ ${urlRegex} ]] && return 0 || return 1
  }

