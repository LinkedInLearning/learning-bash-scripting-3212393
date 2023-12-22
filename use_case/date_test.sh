#!/bin/bash
APP_HOME="/workspaces/learning-bash-scripting-3212393/use-case"
SQL_FILE="sample.sql"
START_DATE="2023-01-01"
END_DATE="2023-12-18"

START_DATE=$(date -d $START_DATE +%Y-%m-%d)
END_DATE=$(date -d $END_DATE +%Y-%m-%d)
LOCAL_START_DATE=$START_DATE

START_MONTH=$(date -d $START_DATE +%Y-%m)
END_MONTH=$(date -d $END_DATE +%Y-%m)
LOCAL_START_MONTH=$START_MONTH

echo $LOCAL_START_MONTH
echo $END_MONTH

THE_START_DATE=$LOCAL_START_DATE
echo $THE_START_DATE

THE_END_DATE=$(date -d "$(date -d "$THE_START_DATE +1 month" +%Y-%m-01) -1sec" +%F)
echo $THE_END_DATE

THE_START_DATE=$(date -d "$THE_END_DATE +1 days" +%Y-%m-01)
echo $THE_START_DATE

THE_END_DATE=$(date -d "$(date -d "$THE_START_DATE +1 month" +%Y-%m-01) -1sec" +%F)
echo $THE_END_DATE

LOCAL_START_MONTH=$(date -d $THE_START_DATE +%Y-%m)
echo $LOCAL_START_MONTH
echo $END_MONTH




