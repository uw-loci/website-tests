Check IP address:

  $ host maven.imagej.net
  maven.imagej.net has address 144.92.48.199

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://maven.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://maven.imagej.net/.hello

Check hello access:

  $ curl -s https://maven.imagej.net/.hello
  maven.imagej.net on balinese

Check blanket redirect:

  $ curl -Is https://maven.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://maven.scijava.org/

  $ curl -Is https://maven.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://maven.scijava.org/foo

Check Ivy User-Agent (for Micro-Manager builds):

  $ curl -s -A Ivy http://maven.imagej.net/ | grep '<title>' | xargs
  <title>Nexus Repository Manager</title>

  $ curl -Is -A Ivy http://maven.imagej.net/nexus/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: http://maven.imagej.net/foo

  $ curl -s -A Ivy https://maven.imagej.net/ | grep '<title>' | xargs
  <title>Nexus Repository Manager</title>

  $ curl -Is -A Ivy https://maven.imagej.net/nexus/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://maven.imagej.net/foo
