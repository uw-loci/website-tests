Check IP address:

  $ host usage.imagej.net
  usage.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://usage.imagej.net/hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://usage.imagej.net/hello

Check hello access:

  $ curl -s https://usage.imagej.net/hello
  usage.imagej.net on devonrex

Check blanket redirect:

  $ curl -Is https://usage.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Usage

  $ curl -Is https://usage.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Usage
