#!/bin/bash
APP_HOME="/workspaces/learning-bash-scripting-3212393/use-case"
SQL_FILE="sample.sql"
START_DATE="2023-12-01"
END_DATE="2023-12-18"

START_DATE=$(date -d $START_DATE +%Y-%m-%d )
END_DATE=$(date -d $END_DATE +%Y-%m-%d )
LOCAL_START_DATE=$(date -d $START_DATE +%Y-%m-%d )

START_MONTH=$(date -d $START_DATE +%Y-%m)
END_MONTH=$(date -d $END_DATE +%Y-%m)
LOCAL_START_MONTH=$(date -d $START_DATE +%Y-%m)

if [ $START_MONTH == $END_MONTH ]
then
    START_DATE=$START_DATE
    END_DATE=$END_DATE
    VAR="'$START_DATE' and '$END_DATE'"
    sed -i -e "s/\(date_key between \).*/\1$VAR/" ${APP_HOME}/${SQL_FILE}
else
    echo null
    while [ $LOCAL_START_MONTH != $END_MONTH ]; do
        THE_START_DATE=$LOCAL_START_DATE
        THE_END_DATE=$LOCAL_END_DATE
        
        VAR="'$THE_START_DATE' and '$THE_END_DATE'"
        sed -i -e "s/\(date_key between \).*/\1$VAR/" ${APP_HOME}/${SQL_FILE}
        
        LOCAL_START_DATE=$(date -d "$THE_START_DATE + 1 days" +%Y-%m-%d)
        LOCAL_END_DATE=
    done
fi

# echo $START_DATE
# echo $END_DATE
# echo $START_MONTH
# echo $END_MONTH