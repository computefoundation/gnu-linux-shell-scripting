#!/usr/bin/env bash
# 
# File:
#   cf-glsu-view-scripts.sh
# 
# Description:
#   View all scripts in computingfoundation/gnu-linux-shell-use.
# 
# Usage note:
#   Cd to directory "scripts" and run.
# 

if [ "$(echo "$PWD" | sed 's/.*\///')" != 'scripts' ]; then
  echo 'cf-glsu-view-scripts.sh: not in directory "scripts"'
  exit 1
fi

for filePath in $(find . -type f ! -name '*.*'); do
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

