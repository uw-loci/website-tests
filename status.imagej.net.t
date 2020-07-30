Check IP address:

  $ host status.imagej.net
  status.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://status.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://status.imagej.net/.hello

Check hello access:

  $ curl -s https://status.imagej.net/.hello
  status.imagej.net on devonrex

Check blanket redirect:

  $ curl -Is https://status.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://status.scijava.org/

  $ curl -Is https://status.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://status.scijava.org/foo
