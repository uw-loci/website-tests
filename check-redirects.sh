#!/bin/sh
file=$1
domain=$2
test "$domain" || {
  domain=${file%.txt}
  domain=${domain#redirects-}
}
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
