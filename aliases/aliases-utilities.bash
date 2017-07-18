# aliases-utilities.bash
# 
# Sections:
#    1.   Typography
#    2.   Productivity
#    3.   Number formatting
# 

# ~~~~~~~ 1.  TYPOGRAPHY ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[General]
count() { echo "${@}" | wc -c; }                                                 # count: count number of characters in a string

# ~~~~~~~ 2.  PRODUCTIVITY ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[General]
thes() { dict -d moby-thesaurus "${1}" | less; }                                 # thes: find a word in the thesaurus

# ~~~~~~~ 3.  NUMBER FORMATTING ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#[Conversions]
hex2dec() { local hexFrmtd="${1#*'0x'}"; echo $((16#${hexFrmtd})); }             # hex2dec: convert hexidecimal number to decimal
dec2hex() { printf '%#010x\n' "${1}"; }                                          # dec2hex: convert decimal number to hexidecimal

