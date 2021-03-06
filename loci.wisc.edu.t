Check IP address:

  $ host loci.wisc.edu | sort
  loci.wisc.edu has address 144.92.48.134
  loci.wisc.edu mail is handled by 10 mta1.wiscmail.wisc.edu.
  loci.wisc.edu mail is handled by 10 mta2.wiscmail.wisc.edu.
  loci.wisc.edu mail is handled by 10 mta3.wiscmail.wisc.edu.
  loci.wisc.edu mail is handled by 10 mta4.wiscmail.wisc.edu.
  loci.wisc.edu mail is handled by 10 mta5.wiscmail.wisc.edu.
  loci.wisc.edu mail is handled by 5 smtp.wiscmail.wisc.edu.

  $ host www.loci.wisc.edu
  www.loci.wisc.edu has address 144.92.48.134

Check www redirect:

  $ curl -Is http://www.loci.wisc.edu | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://loci.wisc.edu/

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://loci.wisc.edu/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://loci.wisc.edu/.hello

Check hello access:

  $ curl -s https://loci.wisc.edu/.hello
  loci.wisc.edu on devonrex

Check site-specific redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-loci.wisc.edu.txt"
  DONE

Check legacy redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-legacy.txt" -d loci.wisc.edu
  DONE
