#!/usr/bin/env bash
# 
# Bash file and directory utilities
# 

# Extraction
# --------------------------------------------
  # Extract a the extension from a file name using best guess: get all text
  # after the last or second to last dot if it exists.
  # Usage:
  #   extractFileExtension <file name>
  extractFileExtension() {
    if [[ "${1}" = *'.'* ]]; then
      local fileName="${1%.*}" ext="${1##*.}"
      [[ "${fileName}" = *'.'* ]] && ext="${fileName##*.}.${ext}"
      echo "${ext}"
    fi
  }

# Other
# --------------------------------------------
  # Return the next number incremented file name.
  # Examples:
  #   # if "mbg.txt" already exists
  #   getIncrementedFileName mbg.txt # returns mbg2.txt
  #   # if "mbg.txt", "./mbg5.txt" and "./mbg17.txt" already exist
  #   getIncrementedFileName mbg.txt # returns mbg18.txt
  # Usage:
  #   getIncrementedFileName <file name> [directory to search in]
  #       directory to search in: default is current
  # Options:
  #   -d    use directories instead of files
  getIncrementedFileName() {
    local OPT OPTIND
    getopts :d OPT
    shift $((OPTIND-1))
    local FIND_TYPE='f'
    if [ "${OPT}" = 'd' ]; then
      FIND_TYPE='d'
    fi
    local fileName="${1}"
    [ "$#" -ge 2 ] && local DIR="${2}" || local DIR='.'
    local FILE_EXT="$(extractFileExtension "${fileName}")"
    [ -n "${FILE_EXT}" ] && FILE_EXT=".${FILE_EXT}"
    local FILE_BASE_NAME="${1%${FILE_EXT}*}"

    local foundFiles=($(find "${DIR}" -maxdepth 1 -type "${FIND_TYPE}" \
        -regextype posix-awk -regex ".*/${FILE_BASE_NAME}[0-9]*${FILE_EXT}"))
    if [ "${#foundFiles[@]}" -gt 0 ]; then
      local fileNum=1
      for foundFile in "${foundFiles[@]}"; do
        local foundFile="${foundFile##*/}"
        local foundFileBaseName="${foundFile%${FILE_EXT}*}"
        local foundFileNum="$(echo "${foundFileBaseName}" | sed -e \
            's/[^0-9]//g')"
        if [ -n "${foundFileNum}" ]; then
          # If using directory names, DOS line endings must be removed for
          # foundFileNum or arithmetic operations will result in a syntax error.
          # Note: using "${foundFileNum//$'\r'/}" and other operations do not
          # work.
          [[ "${foundFileNum}" =~ [0-9]* ]] && foundFileNum="${BASH_REMATCH[0]}"
          if [ "${foundFileNum}" -gt "${fileNum}" ]; then
            fileNum="${foundFileNum}"
          fi
        fi
      done
      fileName="${FILE_BASE_NAME}$((fileNum + 1))${FILE_EXT}"
    fi
    echo "${fileName}"
  }



# ============================================================
#   REFERENCE
# ============================================================
# 
#   isDirectoryEmpty() {
#     if [ "$(ls -A "${1}")" ]; then return 0; else return 1; fi
#   }
# 

