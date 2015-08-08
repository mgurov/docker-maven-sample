#!/bin/bash -eu

stop=-1
while getopts ":s:" opt; do
    case $opt in
    s)
      stop=$OPTARG
      ;;
    \?)
      echo "Invalid option: -$OPTARG"
      exit -1
      ;;
  esac
done

cnt=1
while [ $cnt -gt 0 ]; do
    echo "Count: $cnt."
    if [ $cnt -eq $stop ]; then
        cnt=0
        echo "stopping"
    else
        let cnt=$cnt+1
    fi

    sleep 1;
done