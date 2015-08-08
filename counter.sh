#!/bin/bash -eu

stop=${1:--1}
cnt=1
while [ $cnt -gt 0 ]; do
    echo "Count: $cnt."
    if [ $cnt -eq $stop ]; then
        cnt=0
        echo "exiting"
    else
        let cnt=$cnt+1
    fi

    sleep 1;
done