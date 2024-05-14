#!/usr/bin/env bash

main () {
    local input="$1"
    local uppercase_input
    local lowercase_input

    # Remove leading and trailing whitespace from the input
    input="$(echo -e "${input}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"

    # Check if the input is empty (silence)
    if [ -z "$input" ]; then
        echo "Fine. Be that way!"
        return
    fi

    # Convert input to all uppercase
    uppercase_input=$(echo "$input" | tr '[:lower:]' '[:upper:]')

    # Convert input to all lowercase
    lowercase_input=$(echo "$input" | tr '[:upper:]' '[:lower:]')

    # Check if the input is in all uppercase (yelling) and a question
    if [[ "$input" == "$uppercase_input" && "$input" != "$lowercase_input" && "$input" == *"?"* ]]; then
        echo "Calm down, I know what I'm doing!"
        return
    fi

    # Check if the input is in all uppercase (yelling) but not a question
    if [[ "$input" == "$uppercase_input" && "$input" != "$lowercase_input" ]]; then
        echo "Whoa, chill out!"
        return
    fi

    # Check if the input ends with a question mark (question)
    if [[ "$input" =~ [?]$ ]]; then
        echo "Sure."
        return
    fi

    # Default response
    echo "Whatever."
}

main "$@"
