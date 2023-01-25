Check IP address:

  $ host trac.imagej.net
  trac.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://trac.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://trac.imagej.net/.hello\r (esc)

Check hello access:

  $ curl -s https://trac.imagej.net/.hello
  trac.imagej.net on egyptianmau

Check redirects:

  $ curl -Is https://trac.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://imagej.net/tickets/\r (esc)

  $ curl -Is https://trac.imagej.net/ticket/1234 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://imagej.net/tickets/1234\r (esc)

  $ curl -Is https://trac.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://imagej.net/tickets/\r (esc)
