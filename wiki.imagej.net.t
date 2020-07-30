Check IP address:

  $ host wiki.imagej.net
  wiki.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://wiki.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://wiki.imagej.net/.hello

Check hello access:

  $ curl -s https://wiki.imagej.net/.hello
  wiki.imagej.net on devonrex

Check blanket redirect:

  $ curl -Is https://wiki.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/

  $ curl -Is https://wiki.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/foo
