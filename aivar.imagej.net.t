Check IP address:

  $ host aivar.imagej.net
  aivar.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://aivar.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://aivar.imagej.net/.hello

Check hello access:

  $ curl -s https://aivar.imagej.net/.hello
  aivar.imagej.net on devonrex

Check blanket redirect:

  $ curl -Is https://aivar.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://downloads.imagej.net/~aivar/

  $ curl -Is https://aivar.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://downloads.imagej.net/~aivar/foo
