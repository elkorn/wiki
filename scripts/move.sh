#!/bin/bash

cmd="$2"
found=$(bash ./find.sh "$1")
if [ "$cmd" = "-n" ]; then
    echo $found
    exit
fi

dir=./"${1,,}"
if [ ! -d "$dir" ]; then
    mkdir "$dir"
fi

mv $found "$dir"
