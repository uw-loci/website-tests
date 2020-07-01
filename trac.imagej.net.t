Check IP address:

  $ host trac.imagej.net
  trac.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://trac.imagej.net/hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://trac.imagej.net/hello

Check hello access:

  $ curl -s https://trac.imagej.net/hello
  trac.imagej.net on devonrex

Check redirects:

  $ curl -Is https://trac.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/tickets/

  $ curl -Is https://trac.imagej.net/ticket/1234 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/tickets/1234

  $ curl -Is https://trac.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/tickets/
