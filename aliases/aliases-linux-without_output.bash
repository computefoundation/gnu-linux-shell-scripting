# aliases-linux-without_output.bash
# 
# Sections:
#    1.   File management
#    2.   Network management
#    3.   Hardware management
#    4.   X11
# 

# ======= 1.  FILE MANAGEMENT ==================================

#[Permission·management]
alias permnreadonly='chmod a-w'                                                  # permnreadonly: change the permisson status of a file to read-only

#[Searching]
cdff() { [ "$#" -gt 1 ] && local d="${2}" || local d='.'; cd "$(find "${d}" \
  -type f -name "*${1}*" -exec sh -c 'echo "${1%/*}"; kill "$PPID"' sh {} \;)" \
  ; }                                                                            # cdff: find a file recursively and cd to its directory; $1: file name; $2: directory (optional; default is current)

cdfd() { [ "$#" -gt 1 ] && local d="${2}" || local d='.'; cd $(find "${d}" \
  -type d -name "*${1}*" -print -quit); }                                        # cdfd: find a directory recursively and cd to it; $1: directory name; $2: directory (optional; default is current)

effa() { [ "$#" -gt 1 ] && local d="${2}" || local d='.'; ${EDITOR} $(find \
  "${d}" -type f -name "*${1}*"); }                                              # effa: find all files recursively and open them in the default editor; $1: file name; $2: directory (optional; default is current)

rmffa() { find . -name "*${1}*" -type f -print0  | xargs -0 rm -f; }             # rmffa: find all files recursively and delete them; $1: file name

egr() { [ "$#" -gt 1 ] && local d="${2}" || local d='.'; ${EDITOR} \
  $(/usr/bin/grep -l -R "${1}" "${d}"); }                                        # egr: find all files recursively containing the given text and open them in the default editor; $1: text; $2: directory (optional; default is current)

# ======= 2.  NETWORKING MANAGEMENT ============================

#[Local·network]
alias enablenetw='nmcli n on'                                                    # enablenetw: enable the local network (requires NetworkManager)
alias disablenetw='nmcli n off'                                                  # disablenetw: disable the local network (requires NetworkManager)

#[Internet]
alias flushdns='dscacheutil -flushcache'                                         # flushdns: flush the DNS Cache

# ======= 3.  HARDWARE MANAGEMENT ==============================

#[Monitors]
alias suspendmonitor='sleep .7; xset dpms force off'                             # suspendmonitor: suspend the monitor

# ======= 4.  X11 ==============================================

#[Copy·and·paste]
alias cdpx='cd "$(xclip -o -selection c)"'                                       # cdpx: cd to the directory path currently pasted in the X11 clipboard
alias epx='${EDITOR} "$(xclip -o -selection c)"'                                 # epx: open the file from the path currently pasted in the X11 clipboard in the default editor

#[X11]
alias pxsel='echo -n "$(xsel)"'                                                  # pxsel: paste the currently selected text to the X11 clipboard

