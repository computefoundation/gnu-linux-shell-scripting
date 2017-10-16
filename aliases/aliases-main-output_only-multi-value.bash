# aliases-main-output_only-multi-value.bash
# 
# Sections:
#    1.   System management
#    2.   Software and applications
#    3.   File management
#    4.   Network management
#    5.   X11
# 

# ======= 1.  SYSTEM MANAGEMENT ================================

#[Processes]
processes() { ps -u "${USER}" -o pid,%cpu,%mem,start,time,bsdtime; }             # processes: list the processes owned by the current user

#[Device·management]
udevattrs() { udevadm info -a -p "$(udevadm info -q path -n "${@}")"; }          # udevattrs: list the udev attributes for a device; $1: device name (e.g. "/dev/sda1")

# ======= 2.  SOFTWARE AND APPLICATIONS ========================

#[Fonts]
alias fclist='fc-list | cut -f2 -d: | sort -u'                                   # fclist: list the names of all installed fonts

# ======= 3.  FILE MANAGEMENT ==================================

#[General]
alias numfiles='echo "$(ls -1 | wc -l)"'                                         # numfiles: get the number of non-hidden files and directories in the current directory
alias largest='du -hsx * | sort -rh | head -10'                                  # largest: list the ten largest non-hidden files and directories in the current directory

#[Status]
alias ll='command ls -FGlAhp'                                                    # ll: list the permissions and owner of each file in the current directory

#[Searching]
ff() { local d='.'; [ "$#" -gt 1 ] && d="${2}"; local out="$(find "${d}" -type \
  f -name "*${1}*")"; [ -n "${out}" ] && echo "${out}"; }                        # ff: find one or more files recursively from the current or specificed directory; $1: file to search; $2: optional directory to search from (default is current)

fd() { local d='.'; [ "$#" -gt 1 ] && d="${2}"; local out="$(find "${d}" -type \
  d -name "*${1}*")"; [ -n "${out}" ] && echo "${out}"; }                        # fd: find one or more directories recursively from the current or specificed directory; $1: directory to search; $2: optional directory to search from (default is current)

# ======= 4.  NETWORKING MANAGEMENT ============================

#[Local·network]
alias ports='sudo ss -antu'                                                      # ports: list all open TCP and UDP ports
alias portsp='sudo lsof -i -P'                                                   # portsp: list all open ports with their PIDs
alias portsl='sudo ss -lntu'                                                     # portsl: list all listening ports

#[Internet]
alias myiploc='curl ipinfo.io'                                                   # myiploc: get the public IPv4 address with the current location information

#[SSH]
alias sshstatus='ss -tnlp'                                                       # sshstatus: list the ports listening for a SSH
alias sshlist='sudo lsof -i -n | egrep \<ssh\>'                                  # sshlist: list all tunnels created by the SSH daemon
alias sshconn='sudo lsof -i -n | egrep \<sshd\>'                                 # sshconn: list all tunnels/connections made to the SSH daemon

# ======= 5.  X11 ==============================================

#[Monitoring]
alias getmousepos='watch -t -n 0.0001 xdotool getmouselocation'                  # getmousepos: watch and print the current mouse position

