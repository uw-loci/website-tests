Check IP address:

  $ host curtis.imagej.net
  curtis.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://curtis.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://curtis.imagej.net/.hello\r (esc)

Check hello access:

  $ curl -s https://curtis.imagej.net/.hello
  curtis.imagej.net on egyptianmau

Check blanket redirect:

  $ curl -Is https://curtis.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://downloads.imagej.net/~curtis/\r (esc)

  $ curl -Is https://curtis.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://downloads.imagej.net/~curtis/foo\r (esc)
