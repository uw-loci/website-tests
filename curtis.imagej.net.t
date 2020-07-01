Check IP address:

  $ host curtis.imagej.net
  curtis.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://curtis.imagej.net/hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://curtis.imagej.net/hello

Check hello access:

  $ curl -s https://curtis.imagej.net/hello
  curtis.imagej.net on devonrex

Check blanket redirect:

  $ curl -Is https://curtis.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://downloads.imagej.net/~curtis/

  $ curl -Is https://curtis.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://downloads.imagej.net/~curtis/foo
