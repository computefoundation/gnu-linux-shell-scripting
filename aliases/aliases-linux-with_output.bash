# aliases-linux-with_output.bash
# 
# Sections:
#    1.   File management
#    2.   Shell
# 

# ======= 1.  FILE MANAGEMENT ==================================

#[Searching]
cxff() { local o="$(find $PWD -type f -wholename "*${1}*" -print -quit)"; [ -n \
  "${o}" ] && echo "${o}" && echo -n "${o}" | xclip -r -selection c; }           # cxff: find a file recursively from the current directory and copy its absolute path to the X11 clipboard; $1: file name

cxfd() { local o="$(find $PWD -type d -wholename "*${1}*" -print -quit)"; [ -n \
  "${o}" ] && echo "${o}" && echo -n "${o}" | xclip -r -selection c; }           # cxfd: find a directory recursively from the current directory and copy its absolute path to the X11 clipboard; $1: file name

#[Utilities]
alias make1mb='mkfile 1m ./1MB.dat'                                              # make1mb: create a 1mb file of all zeros

# ======= 4.  SHELL ============================================

#[Builtin·utilities]
cpv() { local a=(${@:1:$(($#-1))}); rsync -ah --progress "${a[@]}" "${@: -1}"; } # cpv: use builtin cp with progress output (note: do not include a trailing slash to copy a directory)

