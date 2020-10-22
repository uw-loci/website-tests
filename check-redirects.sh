#!/bin/sh
file=$1
domain=$2
cat "$file" | while read line
do
  test "$line" = "${line#\#}" || continue
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
