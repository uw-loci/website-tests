Check IP address:

  $ host update.imagej.net
  update.imagej.net has address 144.92.48.187

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://update.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://update.imagej.net/.hello

  $ curl -s -A Java http://update.imagej.net/.hello
  update.imagej.net on abyssinian

Check hello access:

  $ curl -s https://update.imagej.net/.hello
  update.imagej.net on abyssinian

Check top-level directory index:

  $ curl -s https://update.imagej.net/ | grep '<a href' | sed 's/.*<a href="\([^"]*\)">.*/\1/' | LC_COLLATE=C sort | head
  ?C=D;O=A
  Contents/
  ImageJ-linux32-20120404210913
  ImageJ-linux32-20120429215611
  ImageJ-linux32-20120517212754
  ImageJ-linux32-20120713182620
  ImageJ-linux32-20120722182530
  ImageJ-linux32-20120802184529
  ImageJ-linux32-20120814181314
  ImageJ-linux32-20120912153445

Check public rsync access:

  $ rsync update.imagej.net:: | grep update.imagej.net | xargs
  update.imagej.net ImageJ update site
