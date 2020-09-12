Check IP address:

  $ host skyking.microscopy.wisc.edu
  skyking.microscopy.wisc.edu has address 144.92.48.136

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://skyking.microscopy.wisc.edu/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://skyking.microscopy.wisc.edu/.hello

Check hello access:

  $ curl -s https://skyking.microscopy.wisc.edu/.hello
  skyking.microscopy.wisc.edu on devonrex

Check loci-logo.png access:

  $ curl -Is https://skyking.microscopy.wisc.edu/loci-logo.png | grep '^\(HTTP\|Content-\)'
  HTTP/1.1 200 OK
  Content-Length: 17540
  Content-Type: image/png

Check blanket redirect:

  $ curl -Is https://skyking.microscopy.wisc.edu/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Source_code

  $ curl -Is https://skyking.microscopy.wisc.edu/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Source_code

Check site-specific redirects:

  $ curl -Is https://skyking.microscopy.wisc.edu/curtis | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://downloads.imagej.net/~curtis

  $ curl -Is https://skyking.microscopy.wisc.edu/curtis/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://downloads.imagej.net/~curtis/foo

Check legacy redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-legacy.txt" skyking.microscopy.wisc.edu
  DONE
