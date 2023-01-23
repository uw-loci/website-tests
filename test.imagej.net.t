Check IP address:

  $ host test.imagej.net
  test.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://test.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://test.imagej.net/.hello

Check hello access:

  $ curl -s https://test.imagej.net/.hello
  test.imagej.net on egyptianmau

Check blanket redirect:

  $ curl -Is https://test.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/

  $ curl -Is https://test.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/
