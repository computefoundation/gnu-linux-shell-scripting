#!/usr/bin/env bash
# 
# A script for printing the content of all aliases files.
# 
# Usage note:
#   To use, cd to the aliases directory and run.
# 

if [ "$(echo "$PWD" | sed 's/.*\///')" != 'aliases' ]; then
  echo "$(basename "${BASH_SOURCE[0]}"): not in directory \"aliases\""
  exit 1
fi

for filePath in $(find . -type f -name '*.aliases*'); do
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

