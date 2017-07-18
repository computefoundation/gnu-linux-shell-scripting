# aliases-main.bash
# 
# Sections:
#    1.   File
#    2.   Hardware
#    3.   Networking
#    4.   Shell
# 

# ~~~~~~~ 1.  FILE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[Management]
alias permnreadonly='chmod a-w'                                                  # permnreadonly: make a file read-only

#[Utilities]
alias make1mb='mkfile 1m ./1MB.dat'                                              # make1mb: create a 1mb file of all zeros

# ~~~~~~~ 2.  HARDWARE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[Management]
alias suspendmonitor='sleep .7; xset dpms force off'                             # suspendmonitor: suspend monitor

# ~~~~~~~ 3.  NETWORKING ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[Local·network]
alias enablenetw='nmcli n on'                                                    # enablenetw: enable network (requires networkmanager)
alias disablenetw='nmcli n off'                                                  # disablenetw: disable network (requires networkmanager)

#[System]
alias flushdns='dscacheutil -flushcache'                                         # flushdns: flush DNS Cache

# ~~~~~~~ 4.  SHELL ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[Find]
cxff() { local o="$(find . -type f -wholename "*${1}*" -print -quit)"; [ -n \
  "${o}" ] && echo "${o}" && echo -n "${o}" | xclip -r -selection c; }           # cxff: find file and copy its path to the X11 clipboard; $1: file name

cxfd() { local o="$(find . -type d -name "*${1}*" -print -quit)"; [ -n "${o}" \
  ] && echo "${o}" && echo -n "${o}" | xclip -r -selection c; }                  # cxfd: find directory and copy its path to the X11 clipboard; $1: file name

cdff() { cd "$(find . -type f -name "*${1}*" -exec sh -c 'echo "${1%/*}"; kill \
  "$PPID"' sh {} \;)"; }                                                         # cdff: find file and cd to its directory; $1: file name

cdfd() { cd $(find . -type d -name "*${1}*" -print -quit); }                     # cdfd: find directory and cd to it; $1: directory name
effa() { ${EDITOR} $(find . -type f -name "*${1}*"); }                           # effa: find all files and open in editor; $1: file name
rmffa() { find . -name "*${1}*" -type f -print0  | xargs -0 rm -f; }             # rmffa: find all files and delete; $1: file name

#[Grep]
egr() { ${EDITOR} $(/usr/bin/grep -l -R "${1}" .); }                             # egr: find all files containing the given text and edit; $1: text

#[Copy·and·paste]
alias cdpx='cd "$(xclip -o -selection c)"'                                       # cdpx: cd to directory path copied in X11 clipboard
alias epx='${EDITOR} "$(xclip -o -selection c)"'                                 # epx: edit file from path in X11 clipboard

#[X11]
alias psel='echo -n "$(xsel)"'                                                   # psel: paste current selected text in X11

#[Builtins]
cpv() { local a=(${@:1:$(($#-1))}); rsync -ah --progress "${a[@]}" "${@: -1}"; } # cpv: cp with progress output (note: to copy a directory, do not include a trailing slash)

