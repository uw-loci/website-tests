Check IP address:

  $ host forum.imagej.net
  forum.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://forum.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://forum.imagej.net/.hello\r (esc)

Check hello access:

  $ curl -s https://forum.imagej.net/.hello
  forum.imagej.net on egyptianmau

Check blanket redirect:

  $ curl -Is https://forum.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://forum.image.sc/\r (esc)

  $ curl -Is https://forum.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://forum.image.sc/foo\r (esc)
