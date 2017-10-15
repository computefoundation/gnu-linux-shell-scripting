# aliases-main.bash
# 
# Sections:
#    1.   File management
#    2.   Network management
#    3.   Hardware management
#    4.   Shell
#    5.   X11
# 

# ======= 1.  FILE MANAGEMENT ==================================

#[Permission·management]
alias permnreadonly='chmod a-w'                                                  # permnreadonly: change the permisson status of a file to read-only

#[Searching]
cxff() { local o="$(find $PWD -type f -wholename "*${1}*" -print -quit)"; [ -n \
  "${o}" ] && echo "${o}" && echo -n "${o}" | xclip -r -selection c; }           # cxff: find a file recursively from the current directory and copy its absolute path to the X11 clipboard; $1: file name

cxfd() { local o="$(find $PWD -type d -wholename "*${1}*" -print -quit)"; [ -n \
  "${o}" ] && echo "${o}" && echo -n "${o}" | xclip -r -selection c; }           # cxfd: find a directory recursively from the current directory and copy its absolute path to the X11 clipboard; $1: file name

cdff() { cd "$(find . -type f -name "*${1}*" -exec sh -c 'echo "${1%/*}"; kill \
  "$PPID"' sh {} \;)"; }                                                         # cdff: find a file recursively from the current directory and cd to its directory; $1: file name

cdfd() { cd $(find . -type d -name "*${1}*" -print -quit); }                     # cdfd: find a directory recursively from the current directory and cd to it; $1: directory name
effa() { ${EDITOR} $(find . -type f -name "*${1}*"); }                           # effa: find all files recursively from the current directory and open them in the default editor; $1: file name
rmffa() { find . -name "*${1}*" -type f -print0  | xargs -0 rm -f; }             # rmffa: find all files recursively from the current directory and delete them; $1: file name

egr() { ${EDITOR} $(/usr/bin/grep -l -R "${1}" .); }                             # egr: find all files containing the given text recursively from the current directory and open them in the default editor; $1: text

#[Utilities]
alias make1mb='mkfile 1m ./1MB.dat'                                              # make1mb: create a 1mb file of all zeros

# ======= 2.  NETWORKING MANAGEMENT ============================

#[Local·network]
alias enablenetw='nmcli n on'                                                    # enablenetw: enable the local network (requires NetworkManager)
alias disablenetw='nmcli n off'                                                  # disablenetw: disable the local network (requires NetworkManager)

#[Internet]
alias flushdns='dscacheutil -flushcache'                                         # flushdns: flush the DNS Cache

# ======= 3.  HARDWARE MANAGEMENT ==============================

#[Monitors]
alias suspendmonitor='sleep .7; xset dpms force off'                             # suspendmonitor: suspend the monitor

# ======= 4.  SHELL ============================================

#[Builtin·utilities]
cpv() { local a=(${@:1:$(($#-1))}); rsync -ah --progress "${a[@]}" "${@: -1}"; } # cpv: cp with progress output (note: do not include a trailing slash to copy a directory)

# ======= 5.  X11 ==============================================

#[Copy·and·paste]
alias cdpx='cd "$(xclip -o -selection c)"'                                       # cdpx: cd to the directory path currently pasted in the X11 clipboard
alias epx='${EDITOR} "$(xclip -o -selection c)"'                                 # epx: edit the file from path currently pasted in the X11 clipboard

#[X11]
alias pxsel='echo -n "$(xsel)"'                                                  # pxsel: paste the currently selected text to the X11 clipboard

