Check IP address:

  $ host git.imagej.net
  git.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://git.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://git.imagej.net/.hello\r (esc)

Check hello access:

  $ curl -s https://git.imagej.net/.hello
  git.imagej.net on egyptianmau

Check site-specific redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-git.imagej.net.txt"
  DONE
