#!/bin/bash

output=$(go-licenses check ./... --allowed_licenses="$1" --ignore="$2")

if [ -z "$output" ]; then
    echo "Go Licenses: Check Success"
    exit 0
else
    echo "$output" "Go Licenses: Check Failed"
    exit 1
fi
