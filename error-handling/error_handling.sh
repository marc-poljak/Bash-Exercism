#!/usr/bin/env bash

main () {

if [ "$#" -eq 1 ]; then
    # If there is exactly one argument, print a greeting message
    echo "Hello, $1"
else
    echo "Usage: $0 <person>"
    exit 1
fi

}

main "$@"
