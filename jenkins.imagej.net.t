Check IP address:

  $ host jenkins.imagej.net
  jenkins.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://jenkins.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://jenkins.imagej.net/.hello\r (esc)

Check hello access:

  $ curl -s https://jenkins.imagej.net/.hello
  jenkins.imagej.net on egyptianmau

Check site-specific redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-jenkins.imagej.net.txt"
  DONE
