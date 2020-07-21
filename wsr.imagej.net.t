Check IP address:

  $ host wsr.imagej.net
  wsr.imagej.net has address 144.92.48.188

# NB: wsr.imagej.net explicitly supports access over plain HTTP.
#Check HTTP-to-HTTPS redirect:
#
#  $ curl -Is http://wsr.imagej.net/hello | grep '^\(HTTP\|Location\)'
#  HTTP/1.1 301 Moved Permanently
#  Location: https://wsr.imagej.net/hello

Check hello access:

  $ curl -s https://wsr.imagej.net/hello
  wsr.imagej.net on balinese

Check top-level directory index:

  $ curl -s https://wsr.imagej.net/ | grep '<a href' | sed 's/.*<a href="\([^"]*\)">.*/\1/' | LC_COLLATE=C sort
  2015%20Conference.zip
  2015%20Conference/
  ?C=D;O=A
  developer/
  distros/
  docs/
  download/
  googlec65b4e54c262cd1c.html
  hello
  images/
  jars/
  macros/
  notes.html
  plugins/
  source/
  src/
  temp/
  upgrade/
