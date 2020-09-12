Check IP address:

  $ host dev.loci.wisc.edu
  dev.loci.wisc.edu has address 144.92.48.134

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://dev.loci.wisc.edu/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://dev.loci.wisc.edu/.hello

Check hello access:

  $ curl -s https://dev.loci.wisc.edu/.hello
  dev.loci.wisc.edu on devonrex

Check blanket redirect:

  $ curl -Is https://dev.loci.wisc.edu/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://eliceirilab.org/software

  $ curl -Is https://dev.loci.wisc.edu/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://eliceirilab.org/software

Check site-specific redirects:

  $ curl -Is https://dev.loci.wisc.edu/jenkins | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://jenkins.imagej.net

  $ curl -Is https://dev.loci.wisc.edu/jenkins/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://jenkins.imagej.net/foo

  $ curl -Is https://dev.loci.wisc.edu/maven2 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://maven.scijava.org

  $ curl -Is https://dev.loci.wisc.edu/maven2/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://maven.scijava.org/foo

Check legacy redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-legacy.txt" dev.loci.wisc.edu
  DONE
