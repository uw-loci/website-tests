#!/bin/sh
cd "$(dirname "$0")"
for t in *.t
do
  echo
  echo "[$t]"
  prysk "$t"
  sleep 0.5
done
