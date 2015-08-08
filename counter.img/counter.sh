#!/bin/bash -eu

shutup=-1
exit=-1
while getopts ":s:e:" opt; do
    case $opt in
    s)
      shutup=$OPTARG
      ;;
    e)
      exit=$OPTARG
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
    if [ $cnt -eq $exit ]; then
        exit 0
    elif [ $cnt -eq $shutup ] ; then
        cat
    else
        let cnt=$cnt+1
    fi

    sleep 1;
done