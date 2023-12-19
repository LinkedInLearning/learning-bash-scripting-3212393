#!/bin/bash
start_date='2023-01-01'
end_date='2023-12-31'

date_diff=$((($(date -d $end_date "+%s") - $(date -d $start_date "+%s")) / 86400))
months=$(($date_diff/30))
days=$((5%3))
echo $date_diff
if [[ $date_diff > 30 ]]
then
    echo $end_date
else
    echo "date is less"
fi

#echo $months
#echo $days

START_LAST_MONTH=$(date "+%F" -d "$(date +'%Y-%m-01') 0 month")
END_LAST_MONTH=$(date "+%F" -d "$START_LAST_MONTH +1 month 0 day")

#Test Code
echo START_LAST_MONTH=$START_LAST_MONTH
echo END_LAST_MONTH=$END_LAST_MONTH