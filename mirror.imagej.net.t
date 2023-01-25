Check IP address:

  $ host mirror.imagej.net
  mirror.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://mirror.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://mirror.imagej.net/.hello

Check hello access:

  $ curl -s https://mirror.imagej.net/.hello
  mirror.imagej.net on egyptianmau

Check blanket redirect:

  $ curl -Is https://mirror.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/ij/
