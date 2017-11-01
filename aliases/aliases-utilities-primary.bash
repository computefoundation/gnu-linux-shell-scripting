# aliases-utilities-primary.bash
# 
# Sections:
#    1.   Typography
#    2.   Number formatting
# 

# ======= 1.  TYPOGRAPHY =======================================

#[General]
count() { echo "${@}" | wc -c; }                                                 # count: count the number of characters in a string

# ======= 3.  NUMBER FORMATTING ================================

#[Conversions]
hextodec() { local hexFrmtd="${1#*'0x'}"; echo "$((16#"${hexFrmtd}"))"; }        # hextodec: convert a hexidecimal number to decimal
dectohex() { printf '%#010x\n' "${1}"; }                                         # dectohex: convert a decimal number to hexidecimal

