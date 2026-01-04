#!/bin/bash

echo "Hello World"

USAGE=$(df / | awk '{print $5}' | tail -n 1 | tr -d "%")

echo "${USAGE}"

threshold=${1:-90}

if [[ ! $USAGE =~ ^[0-9]+$ ]];
then
        echo "Usage is not a number"
        exit 2
fi

#compare

if [[ "$USAGE" -ge "$threshold" ]]
then
    echo "ALERT : Disk Usage Crossing High : $USAGE"
    exit 1
else
    echo "Normal disk usage $USAGE"
    exit 0
fi