#!/usr/bin/env bash

# A script to output a brief summary of system information

freespace=$(df -h / | awk 'NR==2 {print $4}')
freemem=$(free -h | awk 'NR==2 {print $4}')

greentext="\033[32m"
bold="\033[1m"
normal="\033[0m"

printf -v logdate "%(%Y-%m-%d)T"

echo -e "$bold Quick system report for $greentext $HOSTNAME$normal"
printf "\tKernel Release:\t%s\n" "$(uname -r)"
printf "\tBash Version:\t%s\n" "$BASH_VERSION"
printf "\tFree Storage:\t%s\n" "$freespace"
printf "\tFree Memory:\t%s\n" "$freemem"
printf "\tFiles in pwd:\t%s\n" "$(ls | wc -l)"
printf "\tGenerated on:\t%s\n" "$logdate"