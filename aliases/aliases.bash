# aliases.bash
# 
# Sections:
#    1.   File
#    2.   Hardware
#    3.   Networking
#    4.   Shell Utilities
#    5.   Utilities
# 

# ~~~~~~~ 1.  FILE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[Management]
alias permnreadonly='chmod a-w'                                                  # permnreadonly: make a file read-only

#[Utilities]
alias make1mb='mkfile 1m ./1MB.dat'                                              # make1mb: create a 1mb file of all zeros

# ~~~~~~~ 2.  HARDWARE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[Management]
alias suspendmonitor='sleep .7; xset dpms force off'                             # suspendmonitor: put monitor to sleep

# ~~~~~~~ 3.  NETWORKING ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[Local]
alias enablenetw='nmcli n on'                                                    # enablenetw: enable network (requires networkmanager)
alias disablenetw='nmcli n off'                                                  # disablenetw: disable network (requires networkmanager)

#[System]
alias flushdns='dscacheutil -flushcache'                                         # flushdns: flush DNS Cache

# ~~~~~~~ 4.  SHELL UTILITIES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[Find]
cxff() { local d="$(pwd)"; [ "$#" -gt 1 ] && d="${2}"; local o="$(find "${d}" \
  -type f -wholename "*${1}*" -print -quit)"; [ -n "${o}" ] && echo "${o}" && \
  echo -n "${o}" | xclip -r -selection c; }                                      # cxff: find first file and copy its path to the X11 clipboard; $1: file name; $2: directory (optional; default is current)

cxfd() { local d="$(pwd)"; [ "$#" -gt 1 ] && d="${2}"; local o="$(find "${d}" \
  -type d -name "*${1}*" -print -quit)"; [ -n "${o}" ] && echo "${o}" && echo \
  -n "${o}" | xclip -r -selection c; }                                           # cxfd: find first directory and copy its path to the X11 clipboard; $1: directory name; $2: directory (optional; default is current)

cdff() { local d='.'; [ "$#" -gt 1 ] && d="${2}"; cd "$(find "${d}" -type f \
  -name "*${1}*" -exec sh -c 'echo "${1%/*}"; kill "$PPID"' sh {} \;)"; }        # cdff: find first file and cd to its directory; $1: file name; $2: directory (optional; default is current)

cdfd() { local d='.'; [ "$#" -gt 1 ] && d="${2}"; cd "$(find "${d}" -type d \
  -name "*${1}*" -print -quit)"; }                                               # cdfd: find first directory and cd to it; $1: directory name; $2: directory (optional; default is current)

eff() { local d='.'; [ "$#" -gt 1 ] && d="${2}"; ${EDITOR} "$(find "${d}" \
  -type f -name "*${1}*")"; }                                                    # eff: find all files and edit; $1: file name; $2: directory (optional; default is current)

rmff() { find . -name "*${1}*" -type f -print0  | xargs -0 rm -f; }              # rmff: find all files and delete; $1: file name

#[Grep]
egr() { local d='.'; [ "$#" -gt 1 ] && d="${2}"; ${EDITOR} "$(/usr/bin/grep -l \
  -R "${1}" "${d}")"; }                                                          # egr: find all files containing the given text and edit; $1: text; $2: directory (optional; default is current)

#[Copy·and·Paste]
alias cdpx='cd "$(xclip -o -selection c)"'                                       # cdpx: cd to directory from path in X11 clipboard
alias epx='${EDITOR} "$(xclip -o -selection c)"'                                 # epx: edit file from path in X11 clipboard

#[X11]
alias psel='echo -n "$(xsel)"'                                                   # psel: paste current selected text in X11

#[Builtins]
cpv() { local a=(${@:1:$(($#-1))}); rsync -ah --progress "${a[@]}" "${@: -1}"; } # cpv: cp with progress output (note: to copy a directory, do not include a trailing slash)

# ~~~~~~~ 5.  UTILITIES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[Number·Format·Conversions]
hex2dec() { local hexFrmtd="${1#*'0x'}"; echo $((16#${hexFrmtd})); }             # hex2dec: convert hexidecimal number to decimal
dec2hex() { printf '%#010x\n' "${1}"; }                                          # dec2hex: convert decimal number to hexidecimal

