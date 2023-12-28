#!/bin/bash
app_home="/workspaces/learning-bash-scripting-3212393/use_case"
sql_file="sample.sql"
frequency=${1}
start_date=${2}
end_date=${3}



if [[ -z ${frequency} ]]
then
    echo "please provide the frequency"
    exit 1
fi

if [[ ${frequency} == "custom" ]] && ([[ -z ${start_date} ]] || [[ -z ${end_date} ]])
then
    echo "Please provide the start_date and end_date"
    exit 1
fi

if [[ ${frequency} == 'monthly' ]]
then
    start_date=$(date -d "$(date -d "$($date) -1 month" +%Y-%m-01)" +%Y-%m-%d)
    end_date=$(date -d "$(date -d "$start_date +1 month" +%Y-%m-01) -1sec" +%F)
fi

if [[ ${FREQUENCY} == 'custom' ]]
then
    start_date=$(date -d $start_date +%Y-%m-%d)
    end_date=$(date -d $end_date +%Y-%m-%d)
fi

var="'$start_date' and '$end_date'"
echo "Avalara ${FREQUENCY} recon for date_key between $var"
sed -i -e "s/\(date_key between \).*/\1$var/" ${app_home}/${sql_file}