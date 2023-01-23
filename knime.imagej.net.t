Check IP address:

  $ host knime.imagej.net
  knime.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://knime.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://knime.imagej.net/.hello

Check hello access:

  $ curl -s https://knime.imagej.net/.hello
  knime.imagej.net on egyptianmau

Check blanket redirect:

  $ curl -Is https://knime.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/KNIME

  $ curl -Is https://knime.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/KNIME
