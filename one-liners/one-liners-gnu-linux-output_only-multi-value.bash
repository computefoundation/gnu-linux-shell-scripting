# one-liners-gnu-linux-output_only-multi-value.bash
# 
# Sections:
#    1.   File management
# 

# ======= 1.  FILE MANAGEMENT ==================================

# Recursively find all non-hidden files matching a name.
find . \( ! -name '.*' \) -type f -name '*<file_name>*'

# Recursively find all files matching a name and without a dot (".") in their name.
find . -type f ! -name "*.*" -name '*<file_name>*'

# Recursively find all files matching a name and not in a hidden directory.
find . -not -path '*/\.*' -type f -name '*<file_name>*'

# Recursively find all directories containing executables files and separate them by the specified delimiter.
find . -type f -executable -printf '%h\n'|sort|uniq|tr '\n' '<delimiter>'

