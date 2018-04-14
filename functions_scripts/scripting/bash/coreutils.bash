#!/usr/bin/env bash
# 
# File:
#   coreutils.bash
# 
# Description:
#   Bash core utilities
# 

# ============================================
#   Options and arguments
# ============================================

# Extract all options and their arguments from a command.
# Usage:
#   extractOptions <command_arguments_string>
# Note:
#   Option arguments are extracted for all options except the last.
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

