#!/bin/bash
APP_HOME=/workspaces/learning-bash-scripting-3212393
SH_LOG_DIR=${APP_HOME}/use_case
LOG_FILE1="transaction_count_bdp_backfill_logging_output"

RM_FILE="${SH_LOG_DIR}/${LOG_FILE1}-$(date +%Y-%m-%d).txt"

RM_FILE_LINE_COUNT=$(head -n 3 -- "$RM_FILE" | wc -w)

echo $RM_FILE_LINE_COUNT
if [[ ${RM_FILE_LINE_COUNT} -eq 0 ]]
then
    rm -rf ${RM_FILE}
    echo "${RM_FILE} empty log file removed"
elif [[ ${RM_FILE_LINE_COUNT} -gt 0 ]]
then
    echo "${RM_FILE} log file is not empty"
elif [[ -f ${RM_FILE} ]]
then
    echo "${RM_FILE} log file not found"
fi