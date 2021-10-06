#!/bin/sh

debug() { test "$verbose" && echo "$@"; }

file=
domain=
verbose=
while [ $# -gt 0 ]
do
  case "$1" in
    -d) shift; domain=$1 ;;
    -v) verbose=1 ;;
     *) file=$1 ;;
  esac
  shift
done

test "$domain" || {
  domain=${file%.txt}
  domain=${domain##*redirects-}
}

test -e "$file" || { echo "No such redirects file: $file"; exit 1; }

debug "\nTesting '$file' with domain $domain\n"

cat "$file" | while read line
do
  # Skip comment line.
  test "$line" = "${line#\#}" -a "$line" || continue

  old=${line% *}
  new=${line#* }
  debug "[$old -> $new]"
  url="https://$domain$old"
  if [ "$url" = "$new" ]
  then
    # Skip no-op redirect.
    debug "[SKIPPED]\n"
    continue
  fi

  # Do the check.
  debug "$ curl -Is 'https://$domain$old'"
  response=$(curl -Is "https://$domain$old")
  debug "$(echo "$response" | tr -d '\r' | sed '/^\s*$/d')"

  # Extract location from response string.
  result=$(echo "$response" | grep '^Location: ' | sed 's/^Location: //' | tr -d '\r')

  # Report the result.
  if [ "$result" = "$new" ]
  then
    debug "[SUCCESS]\n"
  else
    test "$result" &&
      echo "[FAIL] expected '$old' -> '$new' but was '$result'" ||
      echo "[FAIL] expected '$old' -> '$new' but got '$(echo "$response" | tr -d '\r' | head -n1)'"
  fi
done
echo DONE
