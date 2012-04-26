#!/bin/bash -ex

# - update script for linux-config -
#
# the purpose is to check if the local config has been updated
# then show the differences and ask for backup.


# initializing variables
txtred=$(tput setaf 1)    # Red
txtgrn=$(tput setaf 2)    # Green
txtrst=$(tput sgr0)       # Text reset

#usage ()
#{

# -d : dry run

#}
