# aliases-info.bash
# 
# Sections:
#    1.   System
#    2.   File
#    3.   Hardware
#    4.   Networking
#    5.   Shell Utilities
#    6.   X11
#    7.   Typography
#    8.   Productivity
#    9.   Android
# 

# ~~~~~~~ 1.  SYSTEM ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[General]
alias osinfo='lsb_release -a'                                                    # osinfo: os information
alias osinfo2='cat /etc/*-release'                                               # osinfo2: os information (2)
alias ostrgarch='llc --version | grep Default | tr -s " " | cut -d " " -f4'      # ostrgarch: os target architecture (requires llvm)

#[Processes]
processes() { ps -u "${USER}" -o pid,%cpu,%mem,start,time,bsdtime; }             # processes: list processes owned by the current user
findpid () { lsof -t -c "${@}" 2>/dev/null; }                                    # findpid: find the ID of a process by name; $1: process name (e.g. "findpid '/d$/' - processes ending in "d")

#[Management]
udevattrs() { udevadm info -a -p "$(udevadm info -q path -n "${@}")"; }          # udevattrs: list udev attributes for a device

# ~~~~~~~ 2.  FILE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[General]
alias numfiles='echo "$(ls -1 | wc -l)"'                                         # numfiles: number of files and directories in current directory
alias largest='du -hsx * | sort -rh | head -10'                                  # largest: ten largest files and directories in current directory

#[Stats]
alias ll='command ls -FGlAhp'                                                    # ll: show permissions and owner of each file in current directory

# ~~~~~~~ 3.  HARDWARE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[General]
alias cpuvend="cat /proc/cpuinfo | grep vendor | uniq | awk '{print \$3}'"       # cpuvend: cpu vendor
alias cpumodel="cat /proc/cpuinfo | grep 'model name' | uniq | cut -d' ' -f3-"   # cpumodel: cpu model
alias cpuarch="lscpu | grep 'Architecture' | awk '{print \$2}'"                  # cpuarch: cpu architecture
alias cpusubarch="gcc -march=native -Q --help=target|grep march|awk '{print \$2}'" # cpusubarch: cpu subarchitecture
alias cpuasm="gcc -march=native -Q --help=target |grep masm= |awk '{print \$2}'" # cpuasm: cpu assembler

#[Status]
alias batt='upower -i /org/freedesktop/UPower/devices/DisplayDevice | sed -n 12,12p' # batt: current battery status

# ~~~~~~~ 4.  NETWORKING ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[Local]
alias route='nmcli dev show'                                                     # route: local network information (requires networkmanager)
alias ports='sudo ss -antu'                                                      # ports: show all open TCP and UDP ports
alias portsL='sudo ss -lntu'                                                     # portsL: show all listening ports only
alias portsP='sudo lsof -i -P'                                                   # portsP: show all open ports together with PID

#[Public]
alias myip='curl ipecho.net/plain; echo'                                         # myip: public IPv4 address
alias myiploc='curl ipinfo.io'                                                   # myiploc: public IPv4 address with location

#[SSH]
alias sshstatus='ss -tnlp'                                                       # sshstatus: show all ports listening to ssh
alias sshlist='sudo lsof -i -n | egrep \<ssh\>'                                  # sshlist: list tunnels created by the ssh daemon
alias sshconn='sudo lsof -i -n | egrep \<sshd\>'                                 # sshconn: list tunnels/connections made to the ssh daemon

# ~~~~~~~ 5.  SHELL UTILITIES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[Find]
ff() { local d='.'; [ $# -gt 1 ] && d="${2}"; local out="$(find "${d}" -type f \
  -name "*${1}*")"; [ -n "${out}" ] && echo "${out}"; }                          # ff: find files recursively; $1: file name; $2: directory (optional; default is current)

fd() { local d='.'; [ $# -gt 1 ] && d="${2}"; local out="$(find "${d}" -type d \
  -name "*${1}*")"; [ -n "${out}" ] && echo "${out}"; }                          # fd: find directories recursively; $1: directory name; $2: directory (optional; default is current)

#[Configuration]
showa() { grep --color=always -i -a1 "${@}" ${HOME}/.bashrc | grep -v '^\s*$'; } # showa: show a bashrc alias given some part of it

# ~~~~~~~ 6.  X11 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[Utilities]
alias getmousepos='watch -t -n 0.0001 xdotool getmouselocation'                  # getmousepos: watch and print mouse position

# ~~~~~~~ 7.  TYPOGRAPHY ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[General]
count() { echo "${@}" | wc -c; }                                                 # count: count number of characters in a string

#[System]
alias fclist='fc-list | cut -f2 -d: | sort -u'                                   # fclist: get names of all installed fonts

# ~~~~~~~ 8.  PRODUCTIVITY ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[General]
thes() { dict -d moby-thesaurus "${1}" | less; }                                 # thes: thesaurus

# ~~~~~~~ 9.  ANDROID ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[TCP/IP]
alias androidwlanip="adb shell ip -f inet addr show wlan0|sed -n '2{p;q}'|tr -s ' '|awk -F'[/ ]' '{print \$3}'" # androidwlanip: Android device WLAN IP address (if not working, replace wlan0 with eth0 or tiwlan0)
alias androidcellip="adb shell ip -f inet addr show rmnet0|sed -n '2{p;q}'|tr -s ' '|awk -F'[/ ]' '{print \$3}'" # androidcellip: Android device cell network IP address
