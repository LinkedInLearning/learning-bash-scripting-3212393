#!/bin/bash
# Commands and Built-ins

# Many of the programes we use in Bash are commands
#   Seperate software that does not depend on Bash

# Bash includes build-in commands as well
#   Part of Bash itself

# Some Bash built-ins have the same name as other commands
# See the documention for a full list of built-ins

echo hello there
printf hello

command echo hello
builtin echo hello

command -V df
# df is /usr/bin/df

command -V echo
enable -n echo

command -V echo
# echo is a shell builtin

enable -n echo
enable echo

# Supporting information for built-in
help echo