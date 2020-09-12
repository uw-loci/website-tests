Check IP address:

  $ host developer.imagej.net
  developer.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://developer.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://developer.imagej.net/.hello

Check hello access:

  $ curl -s https://developer.imagej.net/.hello
  developer.imagej.net on devonrex

Check blanket redirect:

  $ curl -Is https://developer.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Development

  $ curl -Is https://developer.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Development

Check site-specific redirects:

  $ curl -Is https://developer.imagej.net/faq | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/FAQ

  $ curl -Is https://developer.imagej.net/faq/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/FAQ

  $ curl -Is https://developer.imagej.net/roadmap | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Roadmap

  $ curl -Is https://developer.imagej.net/roadmap/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Roadmap

Check legacy redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-legacy.txt" developer.imagej.net
  DONE
