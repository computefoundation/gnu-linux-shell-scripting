# aliases-gnu-linux-main.bash
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

# ======= 2.  NETWORK MANAGEMENT ===============================

#[Internet]
alias flushdns='dscacheutil -flushcache'                                         # flushdns: flush the DNS Cache

# ======= 3.  HARDWARE MANAGEMENT ==============================

#[Monitors]
alias suspendmonitor='sleep .7; xset dpms force off'                             # suspendmonitor: suspend the monitor

# ======= 4.  X11 ==============================================

#[Clipboard]
alias cdpx='cd "$(xclip -o -selection c)"'                                       # cdpx: cd to the directory path currently pasted in the X11 clipboard
alias epx='${EDITOR} "$(xclip -o -selection c)"'                                 # epx: open the file from the path currently pasted in the X11 clipboard in the default editor
alias pxsel='echo -n "$(xsel)"'                                                  # pxsel: paste the currently selected text to the X11 clipboard

