#!/usr/bin/env bash

main () {

  cleaned=$(echo "$1" | tr '-' ' ')
  cleaned=$(echo "$cleaned" | tr -cs "[:alnum:]'" " ")
  cleaned=$(echo "$cleaned" | tr -s ' ')
  IFS=" " read -r -a words <<< "$cleaned"
  acronym=""

  for word in "${words[@]}"; do
    acronym+="${word:0:1}"
  done

  echo "$acronym" | tr '[:lower:]' '[:upper:]'
}

main "$@"