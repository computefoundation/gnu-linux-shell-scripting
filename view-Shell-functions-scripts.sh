#!/usr/bin/env bash
# 
# A script for printing the name and description of all functions scripts.
# 
# Usage note:
#   To use, cd to the functions_scripts directory and run.
# 

if [ "$(echo "$PWD" | sed 's/.*\///')" != 'functions_scripts' ]; then
  echo "$(basename "${BASH_SOURCE[0]}"): not in directory \"functions_scripts\""
  exit 1
fi

for filePath in $(find . -type f ! -name '*.*' -o -name '*.bash'); do
  basePath="$(echo "${filePath}" | awk -F\/ '{print $(NF-2)}')"
  if [ "${basePath}" != "${prevBasePath}" ]; then
    echo '============================================'
    echo -e "  ${basePath}/"
    echo -e '============================================\n'
  fi
  prevBasePath="${basePath}"

  fileBasePath="$(echo "${filePath}" | awk -F\/ '{print $(NF-1),$(NF)}' | \
    sed 's/ /\//')"
  scriptDescription="$(cat "${filePath}" | \
      awk '/^(#[ ])$/ {for(i=1; i<=3; i++) {getline; print}; exit}' | \
      awk '{$1=""; print substr($0,2)}' | grep -Ev '^$|[:]')"
  echo -e "----- ${fileBasePath}:\n${scriptDescription}\n"
done

