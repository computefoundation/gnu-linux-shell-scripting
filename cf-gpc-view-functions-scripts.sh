#!/usr/bin/env bash
# 
# File:
#   cf-glsu-view-functions-scripts.sh
# 
# Description:
#   View all functions scripts in computingfoundation/gnu-linux-shell-use.
# 
# Usage note:
#   Cd to directory "functions_scripts" and run.
# 

if [ "$(echo "$PWD" | sed 's/.*\///')" != 'functions_scripts' ]; then
  echo 'cf-glsu-view-functions-scripts.sh: not in directory "functions_scripts"'
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
      awk '/^(#[ ]Description)/ {for(i=1; i<=3; i++) {getline; print}; exit}' \
      | awk '{$1=""; print substr($0,2)}' | grep -Ev '^$|[:]')"
  echo -e "----- ${fileBasePath}:\n${scriptDescription}\n"
done

