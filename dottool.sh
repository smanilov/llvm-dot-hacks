#! /bin/bash
if [ "$#" -ne 1 ]; then
  echo "Pass a .dot file as an argument and get an .svg out"
  exit 1
fi

dot $1 -Tsvg -o "${1%.dot}.svg"
