#!/usr/bin/env bash
# 
# Bash core utilities.
# 

# Options and Arguments
# --------------------------------------------
  # Extract all options and their arguments from a command's arguments. (Note:
  # option arguments are extracted for all options except the last).
  # Usage example:
  #   opts=($(extractOptions <command arguments string>))
  extractOptions() {
    local arr=(${@})
    if [[ "${arr[0]}" = '-'* ]]; then
      local opts="${arr[0]} "
      for ((x=1; x<=${#arr[@]}; x++)); do
        if [[ "${arr[@]:x:1}" = '-'* ]]; then opts+="${arr[@]:x:1} "
        elif [[ "${arr[@]:((x+1)):1}" = '-'* ]]; then opts+="${arr[@]:x:1} "
        else break
        fi
      done
    fi
    echo "${opts}"
  }

