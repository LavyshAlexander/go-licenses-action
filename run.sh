#!/bin/bash

output=$(go-licenses check . 2>&1 --allowed_licenses="$1" --ignore="$2")

if [ -z "$output" ]; then
    echo "Go Licenses: Check Success"
    exit 0
else
    echo "$output"
	echo "Go Licenses: Check Failed"
    exit 1
fi
