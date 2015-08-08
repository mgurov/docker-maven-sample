#!/bin/bash -eu

cnt=1
while [ $cnt -gt 0 ]; do
    echo "Count: $cnt."
    let cnt=$cnt+1
    sleep 1;
done