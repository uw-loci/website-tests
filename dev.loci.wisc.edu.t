Check IP address:

  $ host dev.loci.wisc.edu
  dev.loci.wisc.edu has address 144.92.48.134

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://dev.loci.wisc.edu/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://dev.loci.wisc.edu/.hello

Check hello access:

  $ curl -s https://dev.loci.wisc.edu/.hello
  dev.loci.wisc.edu on himalayan

Check site-specific redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-dev.loci.wisc.edu.txt"
  DONE

Check legacy redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-legacy.txt" -d dev.loci.wisc.edu
  DONE
