Check IP address:

  $ host downloads.imagej.net
  downloads.imagej.net has address 144.92.48.183

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://downloads.imagej.net/hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://downloads.imagej.net/hello

Check hello access:

  $ curl -s https://downloads.imagej.net/hello
  downloads.imagej.net on devonrex

Check top-level directory index:

  $ curl -s https://downloads.imagej.net/ | grep '<a href' | sed 's/.*<a href="\([^"]*\)">.*/\1/' | LC_COLLATE=C sort
  3dviewer/
  ?C=D;O=A
  ImageJ2-20160205.zip
  MBF-ImageJ-20090120.zip
  bootstrapJ8.js
  fiji/
  hello
  ij-samples.zip
  java/
  knime/
  openspim/
  plugins/
  presentations/
  test/
  ~aivar/
  ~curtis/
  ~gharris/
  ~hinerm/
