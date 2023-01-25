Check IP address:

  $ host aivar.imagej.net
  aivar.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://aivar.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://aivar.imagej.net/.hello\r (esc)

Check hello access:

  $ curl -s https://aivar.imagej.net/.hello
  aivar.imagej.net on egyptianmau

Check blanket redirect:

  $ curl -Is https://aivar.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://downloads.imagej.net/~aivar/\r (esc)

  $ curl -Is https://aivar.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://downloads.imagej.net/~aivar/foo\r (esc)
