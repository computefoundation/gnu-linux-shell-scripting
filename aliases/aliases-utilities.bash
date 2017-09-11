# aliases-utilities.bash
# 
# Sections:
#    1.   Typography
#    2.   Productivity
#    3.   Number formatting
# 

# ======= 1.  TYPOGRAPHY =======================================

#[General]
count() { echo "${@}" | wc -c; }                                                 # count: count number of characters in a string

# ======= 2.  PRODUCTIVITY =====================================

#[General]
thes() { dict -d moby-thesaurus "${1}" | less; }                                 # thes: find a word in the thesaurus

# ======= 3.  NUMBER FORMATTING ================================

#[Conversions]
hextodec() { local hexFrmtd="${1#*'0x'}"; echo "$((16#"${hexFrmtd}"))"; }        # hextodec: convert hexidecimal number to decimal
dectohex() { printf '%#010x\n' "${1}"; }                                         # dectohex: convert decimal number to hexidecimal

