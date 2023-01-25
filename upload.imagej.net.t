Check IP address:

  $ host upload.imagej.net
  upload.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://upload.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://upload.imagej.net/.hello\r (esc)

Check hello access:

  $ curl -s https://upload.imagej.net/.hello
  upload.imagej.net on egyptianmau

Check blanket redirect:

  $ curl -Is https://upload.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://imagej.net/\r (esc)

  $ curl -Is https://upload.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://imagej.net/\r (esc)
