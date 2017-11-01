# aliases-linux-with_output.bash
# 
# Sections:
#    1.   File management
#    2.   Shell management
# 

# ======= 1.  FILE MANAGEMENT ==================================

#[Searching]
cxff() { [ "$#" -gt 1 ] && local p="${2}" || local p="$PWD"; local o="$(find \
  "${p}" -type f -wholename "*${1}*" -print -quit)"; [ -n "${o}" ] && echo \
  "${o}" | tee /dev/tty | xclip -r -selection c; }                               # cxff: find a file recursively and copy its absolute path to the X11 clipboard; $1: file name; $2: directory (optional; default is current)

cxfd() { [ "$#" -gt 1 ] && local p="${2}" || local p="$PWD"; local o="$(find \
  "${p}" -type d -wholename "*${1}*" -print -quit)"; [ -n "${o}" ] && echo \
  "${o}" | tee /dev/tty | xclip -r -selection c; }                               # cxfd: find a directory recursively and copy its absolute path to the X11 clipboard; $1: file name; $2: directory (optional; default is current)

# ======= 2.  SHELL MANAGEMENT =================================

#[Builtin·utilities]
cpv() { local a=(${@:1:$(($#-1))}); rsync -ah --progress "${a[@]}" "${@: -1}"; } # cpv: copy a file or directory with progress output (note: do not include a trailing slash to copy a directory)

