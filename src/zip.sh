#!/bin/bash
# Arguments = -P password

pass=
while getopts ":P:" opt; do
  case $opt in
    P)
      pass=$OPTARG"frozenbananas"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done
/usr/bin/zip -P$pass $2 $3