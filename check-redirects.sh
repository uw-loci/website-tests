#!/bin/sh

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

test "$verbose" && echo "\nTesting '$file' with domain $domain\n"

cat "$file" | while read line
do
  test "$line" = "${line#\#}" -a "$line" || continue
  old=${line% *}
  new=${line#* }
  test "$verbose" && echo "[$old -> $new]"
  url="https://$domain$old"
  test "$url" = "$new" && { test "$verbose" && echo "[SKIPPED]\n"; continue; }
  test "$verbose" && echo "$ curl -Is 'https://$domain$old'"
  response=$(curl -Is "https://$domain$old")
  test "$verbose" && echo "$response" | sed '/^\s*$/d'
  result=$(echo "$response" | grep '^Location: ' | sed 's/^Location: //' | tr -d '\r')
  test "$result" || result=$(echo "$response" | grep '^HTTP/' | sed 's/^HTTP\/[0-9\.]* *//' | tr -d '\r')
  test "$verbose" -a "$result" = "$new" && echo "[SUCCESS]\n"
  test "$result" = "$new" || {
    echo "[FAIL] '$old' -> '$result' != '$new'"
    test "$verbose" && echo || echo "$response"
  }
done
echo DONE
