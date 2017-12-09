# one-liners-applications.bash
# 
# Sections:
#    1.   Databases
# 

# ======= 1.  DATABASES ========================================

# Check if a PostgreSQL database exists.
psql -lqt | cut -d \| -f 1 | grep -qw <database_name>

