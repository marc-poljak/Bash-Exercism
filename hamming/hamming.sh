#!/usr/bin/env bash

main() {
  if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <string1> <string2>"
    exit 1
  fi

  if [[ ${#1} -ne ${#2} ]]; then
    echo "Both strands must be of equal length"
    exit 1
  fi

  local distance=0
  local len=${#1}

  for ((i = 0; i < len; i++)); do
    [[ "${1:i:1}" != "${2:i:1}" ]] && ((distance++))
  done

  echo "$distance"
}

main "$@"
