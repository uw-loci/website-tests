Check IP address:

  $ host update.fiji.sc
  update.fiji.sc has address 144.92.48.192

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://update.fiji.sc/hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://update.fiji.sc/hello

  $ curl -s -A Java http://update.fiji.sc/hello
  update.fiji.sc on balinese

Check hello access:

  $ curl -s https://update.fiji.sc/hello
  update.fiji.sc on balinese

Check top-level directory index:

  $ curl -s https://update.fiji.sc/ | grep '<a href' | sed 's/.*<a href="\([^"]*\)">.*/\1/' | LC_COLLATE=C sort | head
  ?C=D;O=A
  Contents/
  ImageJ-linux32-20120111190019
  ImageJ-linux32-20120508230720
  ImageJ-linux32-20120509185036
  ImageJ-linux32-20120606182612
  ImageJ-linux32-20120611122628
  ImageJ-linux64-20120111190019
  ImageJ-linux64-20120508230720
  ImageJ-linux64-20120509185036
