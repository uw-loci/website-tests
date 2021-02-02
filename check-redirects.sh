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
  domain=${domain#redirects-}
}

test -e "$file" || { echo "No such redirects file: $file"; exit 1; }

cat "$file" | while read line
do
  test "$line" = "${line#\#}" -a "$line" || continue
  old=${line% *}
  new=${line#* }
  response=$(curl -Is "https://$domain$old")
  result=$(echo "$response" | grep '^Location: ' | sed 's/^Location: //' | tr -d '\r')
  test "$result" = "$new" || {
    echo "[FAIL] '$old' -> '$result' != '$new'"
    echo "$response"
  }
done
echo DONE
