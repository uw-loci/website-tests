Check IP address:

  $ host maven.scijava.org
  maven.scijava.org has address 144.92.48.199

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://maven.scijava.org/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://maven.scijava.org/.hello

Check hello access:

  $ curl -s https://maven.scijava.org/.hello
  maven.scijava.org on balinese

Check front page access:

  $ curl -s https://maven.scijava.org | grep '<title>' | xargs
  <title>Nexus Repository Manager</title>

Check public rsync access:

  $ rsync downloads.imagej.net:: | grep downloads.imagej.net | xargs
  downloads.imagej.net ImageJ downloads
