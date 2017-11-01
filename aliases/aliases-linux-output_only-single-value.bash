# aliases-linux-output_only-single-value.bash
# 
# Sections:
#    1.   System management
#    2.   File management
#    3.   Network management
#    4.   Hardware management
# 

# ======= 1.  SYSTEM MANAGEMENT ================================

#[Operating·system]
alias ostrgarch='llc --version | grep Default | tr -s " " | cut -d " " -f4'      # ostrgarch: print the current OS target architecture (requires llvm)

#[Processes]
getpid() { lsof -t -c "${@}" 2>/dev/null; }                                      # getpid: get the ID of a process by name; $1: process name (e.g. "/d$/" to get PIDs for processes ending in "d")

# ======= 2.  FILE MANAGEMENT ==================================

#[Searching]
cxff() { [ "$#" -gt 1 ] && local p="${2}" || local p="$PWD"; local o="$(find \
  "${p}" -type f -wholename "*${1}*" -print -quit)"; [ -n "${o}" ] && echo \
  "${o}" | tee /dev/tty | xclip -r -selection c; }                               # cxff: find a file recursively and copy its absolute path to the X11 clipboard; $1: file name; $2: directory (optional; default is current)

cxfd() { [ "$#" -gt 1 ] && local p="${2}" || local p="$PWD"; local o="$(find \
  "${p}" -type d -wholename "*${1}*" -print -quit)"; [ -n "${o}" ] && echo \
  "${o}" | tee /dev/tty | xclip -r -selection c; }                               # cxfd: find a directory recursively and copy its absolute path to the X11 clipboard; $1: file name; $2: directory (optional; default is current)

#[General]
alias numfiles='echo "$(ls -1 | wc -l)"'                                         # numfiles: get the number of non-hidden files and directories in the current directory

# ======= 3.  NETWORKING MANAGEMENT ============================

#[Internet]
alias myip='curl ipecho.net/plain; echo'                                         # myip: get the public IPv4 address

# ======= 4.  HARDWARE MANAGEMENT ==============================

#[Information]
alias cpuvend="cat /proc/cpuinfo | grep vendor | uniq | awk '{print \$3}'"       # cpuvend: get the vendor name of the current CPU
alias cpumodel="cat /proc/cpuinfo | grep 'model name' | uniq | cut -d' ' -f3-"   # cpumodel: get the model name of the current CPU
alias cpuarch="lscpu | grep 'Architecture' | awk '{print \$2}'"                  # cpuarch: get the architecture of the current CPU
alias cpusubarch="gcc -march=native -Q --help=target|grep march|awk '{print \$2}'" # cpusubarch: get the subarchitecture of the current CPU
alias cpuasm="gcc -march=native -Q --help=target |grep masm= |awk '{print \$2}'" # cpuasm: get the assembler name of the current CPU

#[Status]
alias batthrs='upower -i /org/freedesktop/UPower/devices/DisplayDevice | sed -n 12,12p | awk "{print $4}"' # batthrs: get the number of remaining hours for the battery power

