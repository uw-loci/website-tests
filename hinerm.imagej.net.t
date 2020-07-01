Check IP address:

  $ host hinerm.imagej.net
  hinerm.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://hinerm.imagej.net/hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://hinerm.imagej.net/hello

Check hello access:

  $ curl -s https://hinerm.imagej.net/hello
  hinerm.imagej.net on devonrex

Check blanket redirect:

  $ curl -Is https://hinerm.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://downloads.imagej.net/~hinerm/

  $ curl -Is https://hinerm.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://downloads.imagej.net/~hinerm/foo
