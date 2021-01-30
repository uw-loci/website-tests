Check IP address:

  $ host dietzc.imagej.net
  dietzc.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://dietzc.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://dietzc.imagej.net/.hello

Check hello access:

  $ curl -s https://dietzc.imagej.net/.hello
  dietzc.imagej.net on devonrex

Check site-specific redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-dietzc.imagej.net.txt"
  DONE
