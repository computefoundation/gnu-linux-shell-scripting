# aliases-gnu-linux-output_only-multi-value.bash
# 
# Sections:
#    1.   System management
#    2.   File management
#    3.   Network management
#    4.   X11
# 

# ======= 1.  SYSTEM MANAGEMENT ================================

#[Processes]
procs() { ps -u "${USER}" -o pid,%cpu,%mem,start,time,bsdtime; }                 # procs: list the processes owned by the current user

#[Device·management]
udevattrs() { udevadm info -a -p "$(udevadm info -q path -n "${@}")"; }          # udevattrs: list the udev attributes for a device; $1: device name (e.g. "/dev/sda1")

# ======= 2.  FILE MANAGEMENT ==================================

#[Status]
alias ll='command ls -FGlAhp'                                                    # ll: list the permissions and owner of each file in the current directory

#[Finding]
ff() { find . -type f -name "*${1}*"; }                                          # ff: recursively find all files matching a name name; $1: file name
fd() { find . -type d -name "*${1}*"; }                                          # fd: recursively find all directories matching a name name; $1: directory name
ffgr() { /usr/bin/grep -l -R "${1}" .; }                                         # ffgr: recursively find all files containing a given text; $1: text to search

# ======= 3.  NETWORKING MANAGEMENT ============================

#[Local·network]
alias ports='sudo ss -antu'                                                      # ports: list all open TCP and UDP ports
alias portsp='sudo lsof -i -P'                                                   # portsp: list all open ports with their PIDs
alias portsl='sudo ss -lntu'                                                     # portsl: list all listening ports

#[Internet]
alias myiploc='curl ipinfo.io'                                                   # myiploc: get the public IPv4 address with current location information

#[SSH]
alias sshstatus='ss -tnlp'                                                       # sshstatus: list the ports listening for a SSH
alias sshlist='sudo lsof -i -n | egrep \<ssh\>'                                  # sshlist: list all tunnels created by the SSH daemon
alias sshconn='sudo lsof -i -n | egrep \<sshd\>'                                 # sshconn: list all tunnels/connections made to the SSH daemon

# ======= 4.  X11 ==============================================

#[Hardware]
alias mousepos='watch -t -n 0.0001 xdotool getmouselocation'                     # mousepos: watch and print the current mouse position

