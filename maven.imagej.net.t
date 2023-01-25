Check IP address:

  $ host maven.imagej.net
  maven.imagej.net has address 144.92.48.196

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://maven.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://maven.imagej.net/.hello\r (esc)

Check hello access:

  $ curl -s https://maven.imagej.net/.hello
  maven.imagej.net on mainecoon

Check blanket redirect:

  $ curl -Is https://maven.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://maven.scijava.org/\r (esc)

  $ curl -Is https://maven.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://maven.scijava.org/foo\r (esc)

Check Ivy User-Agent (for Micro-Manager builds):

  $ curl -s -A Ivy http://maven.imagej.net/ | grep '<title>' | xargs
  <title>Nexus Repository Manager</title>

  $ curl -Is -A Ivy http://maven.imagej.net/nexus/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: http://maven.imagej.net/foo\r (esc)

  $ curl -s -A Ivy https://maven.imagej.net/ | grep '<title>' | xargs
  <title>Nexus Repository Manager</title>

  $ curl -Is -A Ivy https://maven.imagej.net/nexus/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://maven.imagej.net/foo\r (esc)
