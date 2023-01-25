Check IP address:

  $ host wsr.imagej.net
  wsr.imagej.net has address 144.92.48.188

# NB: wsr.imagej.net explicitly supports access over plain HTTP.
#Check HTTP-to-HTTPS redirect:
#
#  $ curl -Is http://wsr.imagej.net/.hello | grep '^\(HTTP\|Location\)'
#  HTTP/1.1 301 Moved Permanently\r (esc)
#  Location: https://wsr.imagej.net/.hello\r (esc)

Check hello access:

  $ curl -s https://wsr.imagej.net/.hello
  wsr.imagej.net on abyssinian

Check top-level directory index:

  $ curl -s https://wsr.imagej.net/ | grep '<a href' | sed 's/.*<a href="\([^"]*\)">.*/\1/' | LC_COLLATE=C sort
  2015%20Conference.zip
  2015%20Conference/
  ?C=D;O=A
  api/
  backup/
  developer/
  distros/
  docs/
  download/
  icons/
  ij/
  images/
  jars/
  macros/
  nih-image/
  notes.html
  plugins/
  rsb/
  source/
  src/
  style.css
  temp/
  upgrade/
