#!/bin/bash
APP_HOME="/workspaces/learning-bash-scripting-3212393/use_case"
SQL_FILE="sample.sql"
START_DATE=${1}
END_DATE=${2}

START_DATE=$(date -d $START_DATE +%Y-%m-%d)
END_DATE=$(date -d $END_DATE +%Y-%m-%d)
LOCAL_START_DATE=$START_DATE

START_MONTH=$(date -d $START_DATE +%Y-%m)
END_MONTH=$(date -d $END_DATE +%Y-%m)
LOCAL_START_MONTH=$START_MONTH

if [ $START_MONTH == $END_MONTH ]
then
    VAR="'$START_DATE' and '$END_DATE'"
    sed -i -e "s/\(date_key between \).*/\1$VAR/" ${APP_HOME}/${SQL_FILE}
    sed -i -e "s/\(transaction_date_key between \).*/\1$VAR/" ${APP_HOME}/${SQL_FILE}
else
    while [ $LOCAL_START_MONTH != $END_MONTH ]
    do
        THE_START_DATE=$LOCAL_START_DATE
        THE_END_DATE=$(date -d "$(date -d "$THE_START_DATE +1 month" +%Y-%m-01) -1sec" +%F)
        
        VAR="'$THE_START_DATE' and '$THE_END_DATE'"
        sed -i -e "s/\(date_key between \).*/\1$VAR/" ${APP_HOME}/${SQL_FILE}
        sed -i -e "s/\(transaction_date_key between \).*/\1$VAR/" ${APP_HOME}/${SQL_FILE}
        
        LOCAL_START_DATE=$(date -d "$THE_END_DATE +1 days" +%Y-%m-01)
        LOCAL_START_MONTH=$(date -d $LOCAL_START_DATE +%Y-%m)
    done
    
    VAR="'$LOCAL_START_DATE' and '$END_DATE'"
    sed -i -e "s/\(date_key between \).*/\1$VAR/" ${APP_HOME}/${SQL_FILE}
    sed -i -e "s/\(transaction_date_key between \).*/\1$VAR/" ${APP_HOME}/${SQL_FILE}
fi