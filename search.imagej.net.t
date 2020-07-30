Check IP address:

  $ host search.imagej.net
  search.imagej.net has address 144.92.48.185

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://search.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://search.imagej.net/.hello

Check hello access:

  $ curl -s https://search.imagej.net/.hello
  search.imagej.net on cheetoh

Check front page access:

  $ curl -s https://search.imagej.net/ | grep '<title>'
      <title>ImageJ Search</title>

  $ curl -Is https://search.imagej.net/.git/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 302 Found
  Location: https://search.imagej.net/
