Check IP address:

  $ host usage.imagej.net
  usage.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://usage.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://usage.imagej.net/.hello

Check hello access:

  $ curl -s https://usage.imagej.net/.hello
  usage.imagej.net on egyptianmau

Check front page:

  $ curl -s https://usage.imagej.net/ | grep '<title>' | xargs
  <title>ImageJ Usage Statistics</title>
