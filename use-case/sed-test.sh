#!/bin/bash

START_DATE="2023-12-01"
END_DATE="2023-12-18"

START_MONTH=$(date -d "$START_DATE" +%Y-%m)
END_MONTH=$(date -d "$END_DATE" +%Y-%m)

if [ $START_MONTH == $END_MONTH ]
then
    START_DATE=$START_DATE
    END_DATE=$END_DATE
else
    START_DATE="null"
    END_DATE="null"
fi

echo $START_DATE
echo $END_DATE