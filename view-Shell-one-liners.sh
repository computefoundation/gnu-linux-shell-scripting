#!/usr/bin/env bash
# 
# A script for printing the content of all one-liners files.
# 
# Usage note:
#   To use, cd to the one-liners directory and run.
# 

if [ "$(echo "$PWD" | sed 's/.*\///')" != 'one-liners' ]; then
  echo "$(basename "${BASH_SOURCE[0]}"): not in directory \"one-liners\""
  exit 1
fi

for filePath in $(find . -type f -name '*.one-liners*'); do
  basePath="$(echo "${filePath}" | awk -F\/ '{print $(NF-2)}')"
  if [ "${basePath}" != "${prevBasePath}" ]; then
    echo '============================================'
    echo -e "  ${basePath}/"
    echo -e '============================================\n'
  fi
  prevBasePath="${basePath}"

  fileBasePath="$(echo "${filePath}" | awk -F\/ '{print $(NF-1),$(NF)}' | sed \
      's/ /\//')"
  echo -e "----- ${fileBasePath}"
  tail -n +5 "${filePath}"
done

