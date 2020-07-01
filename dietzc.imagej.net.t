Check IP address:

  $ host dietzc.imagej.net
  dietzc.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://dietzc.imagej.net/hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://dietzc.imagej.net/hello

Check hello access:

  $ curl -s https://dietzc.imagej.net/hello
  dietzc.imagej.net on devonrex

Check blanket redirect:

  $ curl -Is https://dietzc.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://downloads.imagej.net/~dietzc/

  $ curl -Is https://dietzc.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://downloads.imagej.net/~dietzc/foo
