Check IP address:

  $ host developer.imagej.net
  developer.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://developer.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://developer.imagej.net/.hello\r (esc)

Check hello access:

  $ curl -s https://developer.imagej.net/.hello
  developer.imagej.net on egyptianmau

Check site-specific redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-developer.imagej.net.txt"
  DONE
