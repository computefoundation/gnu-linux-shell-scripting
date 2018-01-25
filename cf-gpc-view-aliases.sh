#!/usr/bin/env bash
# 
# File:
#   cf-gpc-view-aliases.sh
# 
# Description:
#   View all aliases and short functions in
#   computingfoundation/general-purpose-computing.
# 
# Usage note:
#   Cd to directory "aliases" and run.
# 

if [ "$(echo "$PWD" | sed 's/.*\///')" != 'aliases' ]; then
  echo 'cf-gpc-view-aliases.sh: not in directory "aliases"'
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
  tail -n +8 "${filePath}"
done

