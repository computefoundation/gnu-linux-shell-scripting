#!/usr/bin/env bash
# 
# Bash array utilities.
# 

# Validation
# --------------------------------------------
  # Usage:
  #   arrayContainsValue <value> <array reference>
  arrayContainsValue() {
    local arr="${2}[@]"
    arr=("${!arr}")
    for arrVal in "${arr[@]}"; do [ "${1}" = "${arrVal}" ] && \
        return 0; done
    return 1
  }

  # Usage:
  #   arrayContainsKey <key> <array reference>
  arrayContainsKey() {
    local arr="${2}[@]"
    arr=("${!arr}")
    for arrKey in "${!arr[@]}"; do [ "${1}" = "${arrKey}" ] && \
        return 0; done
    return 1
  }

  # Check if a value matches an array regex value.
  # Usage:
  #   arrayContainsValueByRegex <regex> <array reference>
  arrayContainsValueByRegex() {
    local arr="${2}[@]"
    arr=("${!arr}")
    for arrVal in "${arr[@]}"; do [[ "${arrVal}" =~ ${1} ]] && \
        return 0; done
    return 1
  }

  # Check if array contains a value that is a prefix for the given value.
  # Usage:
  #   arrayContainsPrefixForValue <value> <array reference>
  arrayContainsPrefixForValue() {
    local arr="${2}[@]"
    arr=("${!arr}")
    for arrVal in "${arr[@]}"; do [[ "${1}" = "${arrVal}"* ]] && \
        return 0; done
    return 1
  }

# Getters
# --------------------------------------------
  # Usage:
  #   getArrayValue <value> <array reference>
  getArrayValue() {
    local arr="${2}[@]"
    arr=("${!arr}")
    for arrVal in "${arr[@]}"; do [ "${arrVal}" = "${1}" ] && \
        echo "${arrVal}" && break; done
  }

  # Get the position of an array element matching a value.
  # Usage:
  #   getPositionOfArrayElement <value> <array reference>
  getPositionOfArrayElement() {
    local arr="${2}[@]"
    arr=("${!arr}")
    for indx in ${!arr[@]}; do [ "${arr[${indx}]}" = "${1}" ] && \
        echo "${indx}" && break; done
  }

  # Get the first value in the array that contains the given string.
  # Usage:
  #   getFirstArrayValueContainingString <string> <array reference>
  getFirstArrayValueContainingString() {
    local arr="${2}[@]"
    arr=("${!arr}")
    for arrVal in "${arr[@]}"; do [[ "${1}" = *"${arrVal}"* ]] && \
        echo "${arrVal}" && break; done
  }

# Manipulation
# --------------------------------------------
  # Usage example:
  #   newArr=($(removeElementFromArray <value> <array reference>))
  removeElementFromArray() {
    local arr="${2}[@]"
    arr=("${!arr}")
    local indx=0
    for arrVal in "${arr[@]}"; do
      [ "${arrVal}" = "${1}" ] && \
          arr=("${arr[@]:0:${indx}} ${arr[@]:$((${indx} + 1))}") && \
          break
      ((indx++))
    done
    echo "${arr[@]}"
  }

  # Usage example:
  #   newArr=($(removeDuplicatesFromArray <array reference>))
  removeDuplicatesFromArray() {
    local arr="${1}[@]"
    arr=("${!arr}")
    local retArr
    for arrVal in "${arr[@]}"; do
      local has=0
      for retArrVal in "${retArr[@]}"; do
          [ "${retArrVal}" = "${arrVal}" ] && has=1 && break; done
      [ ${has} -eq 0 ] && retArr+=("${arrVal}")
    done
    echo "${retArr[@]}"
  }

# Sets
# --------------------------------------------
  # Get the intersection of two arrays (e.g. A=(1 3 9 2 7); B=(2 5 3 7 5); Res=(
  # 3 2 7)).
  getIntersection() {
    local arr1="${1}[@]"
    local arr2="${2}[@]"
    arr1=(${!arr1})
    arr2=(${!arr2})
    local retArr
    for arr1Val in "${arr1[@]}"; do
      for arr2Val in "${arr2[@]}"; do
        if [ "${arr2Val}" = "${arr1Val}" ]; then
          local has=0
          for retArrVal in "${retArr[@]}"; do
              [ "${retArrVal}" = "${arr1Val}" ] && has=1 && break; done
          [ ${has} -eq 0 ] && retArr+=("${arr1Val}")
        fi
      done
    done
    echo "${retArr[@]}"
  }

  # Get the union of two arrays (e.g. A=(5 7 1 1 4); B=(3 1 4 1 9); Res=(5 7 1
  # 4 3 9)).
  getUnion() {
    local arr1="${1}[@]"
    local arr2="${2}[@]"
    arr1=(${!arr1})
    arr2=(${!arr2})
    local retArr
    for arr1Val in "${arr1[@]}"; do
      local has=0
      for retArrVal in "${retArr[@]}"; do
          [ "${retArrVal}" = "${arr1Val}" ] && has=1 && break; done
      [ ${has} -eq 0 ] && retArr+=("${arr1Val}")
    done
    for arr2Val in "${arr2[@]}"; do
      local has=0
        for retArrVal in "${retArr[@]}"; do
            [ "${retArrVal}" = "${arr2Val}" ] && has=1 && break; done
      [ ${has} -eq 0 ] && retArr+=("${arr2Val}")
    done
    echo "${retArr[@]}"
  }

  # Get the difference between array 1 and array 2 (i.e. elements in array 1
  # that are not in array 2; e.g. A=(3 6 2 1 5 1 1); B=(2 4 6); Res=(3 1 5)).
  getDifference() {
    local arr1="${1}[@]"
    local arr2="${2}[@]"
    arr1=(${!arr1})
    arr2=(${!arr2})
    local retArr
    for arr1Val in "${arr1[@]}"; do
      local has=0
      for retArrVal in "${retArr[@]}"; do
          [ "${retArrVal}" = "${arr1Val}" ] && has=1 && break; done
      [ ${has} -eq 0 ] && for arr2Val in "${arr2[@]}"; do
          [ "${arr2Val}" = "${arr1Val}" ] && has=1 && break; done
      [ ${has} -eq 0 ] && retArr+=("${arr1Val}")
    done
    echo "${retArr[@]}"
  }

# Parsing
# --------------------------------------------
  # Join the elements of an array by a delimiter.
  # Usage:
  #   joinArrayBy <delimiter> <array reference>
  joinArrayBy() {
    local delim="${1}"
    local arr="${2}[@]"
    arr=("${!arr}")
    joined="$(printf "%s" "${arr[@]/#/$delim}")"
    echo "${joined#${delim}}"
  }

# Other
# --------------------------------------------
  # Create pairs between array 1 and array 2 (e.g. A=(0 12); B=(4 5); Res=("0:4"
  # "0:5" "12:4" "12:5")).
 createPairs() {
    local arr1="${1}[@]"
    local arr2="${2}[@]"
    arr1=(${!arr1})
    arr2=(${!arr2})
    local retArr
    for arr1Val in ${arr1[@]}; do
      for arr2Val in ${arr2[@]}; do
        local retArr+=("${arr1Val}:${arr2Val}")
      done
    done
    echo "${retArr[@]}"
  }



# ============================================================
#   ALTERNATIVE IMPLEMENTATIONS
# ============================================================
# 
# Sets
# --------------------------------------------
#   # Union of two arrays (e.g. A=(5 7 1 1 4); B=(3 1 4 1 9); Res=(5 7 3 1 4 9)).
#   getUnion() {
#     local arr1="${1}[@]"
#     local arr2="${2}[@]"
#     arr1=(${!arr1})
#     arr2=(${!arr2})
#     local retArr
#     local i=0 j=0
#     while [[ ${i} -lt ${#arr1[@]} && ${j} -lt ${#arr2[@]} ]]; do
#       if [[ "${arr1[${i}]}" > "${arr2[${j}]}" ]]; then
#         retArr+=("${arr1[$((i++))]}")
#       elif [[ "${arr1[${i}]}" < "${arr2[${j}]}" ]]; then
#         retArr+=("${arr2[$((j++))]}")
#       else
#         retArr+=("${arr1[$((i++))]}")
#         ((j++))
#       fi
#     done
#     while [ ${i} -lt ${#arr1[@]} ]; do retArr+=("${arr1[$((i++))]}"); done
#     while [ ${j} -lt ${#arr2[@]} ]; do retArr+=("${arr2[$((j++))]}"); done
#     retArr=($(removeDuplicatesFromArray retArr))
#     echo "${retArr[@]}"
#   }
# 

