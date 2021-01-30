Check IP address:

  $ host git.imagej.net
  git.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://git.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://git.imagej.net/.hello

Check hello access:

  $ curl -s https://git.imagej.net/.hello
  git.imagej.net on devonrex

Check site-specific redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-git.imagej.net.txt"
  DONE
