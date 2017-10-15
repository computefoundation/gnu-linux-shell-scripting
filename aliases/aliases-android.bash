# aliases-android.bash
# 
# Sections:
#    1.   TCP/IP
# 

# ======= 1.  TCP/IP ===========================================

alias androidwlanip="adb shell ip -f inet addr show wlan0|sed -n '2{p;q}'|tr -s ' '|awk -F'[/ ]' '{print \$3}'" # androidwlanip: get the WLAN IP address of an Android device (if not working, replace "wlan0" with "eth0" or "tiwlan0")
alias androidcellip="adb shell ip -f inet addr show rmnet0|sed -n '2{p;q}'|tr -s ' '|awk -F'[/ ]' '{print \$3}'" # androidcellip: get the cell network IP address of an Android device

