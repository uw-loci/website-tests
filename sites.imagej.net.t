Check IP address:

  $ host sites.imagej.net
  sites.imagej.net has address 144.92.48.186

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://sites.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://sites.imagej.net/.hello\r (esc)

  $ curl -s -A Java http://sites.imagej.net/.hello
  sites.imagej.net on balinese

Check hello access:

  $ curl -s https://sites.imagej.net/.hello
  sites.imagej.net on balinese

Check top-level directory index:

  $ curl -s https://sites.imagej.net/ | grep '<a href' | sed 's/.*<a href="\([^"]*\)">.*/\1/' | grep '^\(Java-8\|Fiji-Legacy\|TensorFlow\|Bio-Formats\)' | LC_COLLATE=C sort
  Bio-Formats-5/
  Bio-Formats/
  Fiji-Legacy/
  Java-8/
  TensorFlow/

Check that there are enough update sites:

  $ numSites=$(curl -s https://sites.imagej.net/ | grep '<a href' | sed 's/.*<a href="\([^"]*\)">.*/\1/' | wc -l)
  $ test "$numSites" -gt 450 && echo GOOD || echo "$numSites"
  GOOD

Check public rsync access:

  $ rsync sites.imagej.net:: | grep sites.imagej.net | xargs
  sites.imagej.net ImageJ update sites
