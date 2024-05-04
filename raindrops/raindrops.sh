#!/usr/bin/env bash

main () {

  local number=$1
  local result=""

  if (( number % 3 == 0 )); then
    result+="Pling"
  fi

  if (( number % 5 == 0 )); then
    result+="Plang"
  fi

  if (( number % 7 == 0 )); then
    result+="Plong"
  fi

  if [ -z "$result" ]; then
    result="$number"
  fi

  echo "$result"
}

main "$@"