#!/usr/bin/env bash

main () {
    local sentence="$1"
    local unique_chars=""

    # Convert the sentence to lowercase to make it case insensitive
    sentence=$(echo "$sentence" | tr '[:upper:]' '[:lower:]')

    # Iterate over each character in the sentence
    for ((i=0; i<${#sentence}; i++)); do
        char="${sentence:$i:1}"
        # Check if the character is a letter and if it hasn't been counted yet
        if [[ $char =~ [a-z] && ! "$unique_chars" =~ $char ]]; then
            unique_chars+="$char"
        fi
    done

    # Check if the number of unique characters is 26 (indicating a pangram)
    if [ ${#unique_chars} -eq 26 ]; then
        echo "true"
    else
        echo "false"
    fi
}

main "$@"