#!/usr/bin/env bash

main () {
  # Use the value of the first positional parameter if it's set, otherwise use 'you' as the default value".
  input=${1:-"you"}
  output="One for $input, one for me."
  echo "$output"
}

main "$@"
