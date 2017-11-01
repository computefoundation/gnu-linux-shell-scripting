# aliases-linux-with_output.bash
# 
# Sections:
#    1.   Shell management
# 

# ======= 1.  SHELL MANAGEMENT =================================

#[Builtin·utilities]
cpv() { local a=(${@:1:$(($#-1))}); rsync -ah --progress "${a[@]}" "${@: -1}"; } # cpv: copy a file or directory with progress output (note: do not include a trailing slash to copy a directory)

