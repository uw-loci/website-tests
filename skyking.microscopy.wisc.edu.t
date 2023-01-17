Check IP address:

  $ host skyking.microscopy.wisc.edu
  skyking.microscopy.wisc.edu has address 144.92.48.136

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://skyking.microscopy.wisc.edu/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://skyking.microscopy.wisc.edu/.hello

Check hello access:

  $ curl -s https://skyking.microscopy.wisc.edu/.hello
  skyking.microscopy.wisc.edu on himalayan

Check loci-logo.png access:

  $ curl -Is https://skyking.microscopy.wisc.edu/loci-logo.png | grep '^\(HTTP\|Content-\)'
  HTTP/1.1 200 OK
  Content-Length: 17540
  Content-Type: image/png

Check site-specific redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-skyking.microscopy.wisc.edu.txt"
  DONE

Check legacy redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-legacy.txt" -d skyking.microscopy.wisc.edu
  DONE
