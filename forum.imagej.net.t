Check IP address:

  $ host forum.imagej.net
  forum.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://forum.imagej.net/hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://forum.imagej.net/hello

Check hello access:

  $ curl -s https://forum.imagej.net/hello
  forum.imagej.net on devonrex

Check blanket redirect:

  $ curl -Is https://forum.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://forum.image.sc/

  $ curl -Is https://forum.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://forum.image.sc/foo
