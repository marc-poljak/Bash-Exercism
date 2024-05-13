#!/usr/bin/env bash

main () {
    local num="$1"
    local original_num="$num"
    local sum=0
    local digits=0

    while [ "$num" -gt 0 ]; do
        digits=$((digits + 1))
        num=$((num / 10))
    done

    num="$original_num"
    while [ "$num" -gt 0 ]; do
        local digit=$((num % 10))
        sum=$((sum + digit**digits))
        num=$((num / 10))
    done

    if [ "$sum" -eq "$original_num" ]; then
        echo "true"
    else
        echo "false"
    fi
}

main "$@"
