# aliases-linux-output_only-multi-value.bash
# 
# Sections:
#    1.   System management
#    2.   File management
#    3.   Network management
#    4.   X11
# 

# ======= 1.  SYSTEM MANAGEMENT ================================

#[Processes]
processes() { ps -u "${USER}" -o pid,%cpu,%mem,start,time,bsdtime; }             # processes: list the processes owned by the current user

#[Device·management]
udevattrs() { udevadm info -a -p "$(udevadm info -q path -n "${@}")"; }          # udevattrs: list the udev attributes for a device; $1: device name (e.g. "/dev/sda1")

# ======= 2.  FILE MANAGEMENT ==================================

#[Status]
alias ll='command ls -FGlAhp'                                                    # ll: list the permissions and owner of each file in the current directory

#[Finding]
ff() { find . -type f -name "*${1}*"; }                                          # ff: find one or more files recursively and list them; $1: file name
fd() { find . -type d -name "*${1}*"; }                                          # fd: find one or more directories recursively and list them; $1: directory name
ffgr() { /usr/bin/grep -l -R "${1}" .; }                                         # ffgr: find all files recursively containing the given text and list them; $1: text

# ======= 3.  NETWORKING MANAGEMENT ============================

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

# ======= 4.  X11 ==============================================

#[Hardware]
alias getmousepos='watch -t -n 0.0001 xdotool getmouselocation'                  # getmousepos: watch and print the current mouse position

