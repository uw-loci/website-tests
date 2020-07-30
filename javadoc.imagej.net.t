Check IP address:

  $ host javadoc.imagej.net
  javadoc.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://javadoc.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://javadoc.imagej.net/.hello

Check hello access:

  $ curl -s https://javadoc.imagej.net/.hello
  javadoc.imagej.net on devonrex

Check blanket redirect:

  $ curl -Is https://javadoc.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://javadoc.scijava.org/

  $ curl -Is https://javadoc.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://javadoc.scijava.org/foo
