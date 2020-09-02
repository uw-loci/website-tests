Check IP address:

  $ host downloads.imagej.net
  downloads.imagej.net has address 144.92.48.183

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://downloads.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://downloads.imagej.net/.hello

Check hello access:

  $ curl -s https://downloads.imagej.net/.hello
  downloads.imagej.net on egyptianmau

Check top-level directory index:

  $ curl -s https://downloads.imagej.net/ | grep '<a href' | sed 's/.*<a href="\([^"]*\)">.*/\1/' | LC_COLLATE=C sort
  3dviewer/
  ?C=D;O=A
  ImageJ2-20160205.zip
  MBF-ImageJ-20090120.zip
  bootstrapJ8.js
  fiji/
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

Check Fiji archive links:

  $ curl -s https://downloads.imagej.net/fiji/archive/ | grep '<a href' | sed 's/.*<a href="\([^"]*\)">.*/\1/' | LC_COLLATE=C sort | head
  /fiji/
  20191027-2045/
  20191028-2046/
  20191030-2047/
  20191101-2048/
  20191113-2054/
  20191115-2055/
  20191119-2057/
  20191216-2110/
  20200708-1553/

  $ curl -s https://downloads.imagej.net/fiji/latest/ | grep '<a href' | sed 's/.*<a href="\([^"]*\)">.*/\1/' | LC_COLLATE=C sort
  /fiji/
  ?C=D;O=A
  fiji-linux64.tar.gz
  fiji-linux64.zip
  fiji-macosx.tar.gz
  fiji-macosx.zip
  fiji-nojre.tar.gz
  fiji-nojre.zip
  fiji-win32.tar.gz
  fiji-win32.zip
  fiji-win64.tar.gz
  fiji-win64.zip

  $ curl -Is https://downloads.imagej.net/fiji/latest/fiji-win64.zip | grep '^\(HTTP\|Content-Type\)'
  HTTP/1.1 200 OK
  Content-Type: application/zip

Check public rsync access:

  $ rsync downloads.imagej.net:: | grep downloads.imagej.net | xargs
  downloads.imagej.net ImageJ downloads
