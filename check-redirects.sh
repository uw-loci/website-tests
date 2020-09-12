#!/bin/sh
file=$1
domain=$2
cat "$file" | while read line
do
  test "$line" = "${line#\#}" || continue
  old=${line% *}
  new=${line#* }
  result=$(curl -Is "https://$domain$old" | grep '^Location: ' | sed 's/^Location: //' | tr -d '\r')
  test "$result" = "$new" || echo "[FAIL] $old -> $result != $new"
done
echo DONE
