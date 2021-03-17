#!/bin/sh

# try-again.sh - Tries a command multiple times, waiting between attempts.
#
# The loop stops when the command has a zero exit code,
# or the maximum number of attempts has been made.
#
# The script emits the command's stderr, stdout, & exit code from the last run.
#
# Note that this script does not handle arguments with spaces.

count=0
tries=4
delay=17
errlog=$(mktemp)
while [ $count -lt $tries ]
do
  result=$($@ 2>"$errlog")
  code=$?
  test "$code" -eq 0 && break
  count=$((count+1))
  sleep $delay
done
stderr=$(cat "$errlog")
rm -f "$errlog"
test "$stderr" && >&2 echo "$stderr"
test "$result" && echo "$result"
exit $code
