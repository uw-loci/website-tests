Check IP address:

  $ host downloads.imagej.net
  downloads.imagej.net has address 144.92.48.183

Check HTTP-to-HTTPS redirect:

  $ "$TESTDIR/try-again.sh" curl -Is http://downloads.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://downloads.imagej.net/.hello\r (esc)

Check hello access:

  $ "$TESTDIR/try-again.sh" curl -s https://downloads.imagej.net/.hello
  downloads.imagej.net on devonrex

Check top-level directory index:

  $ "$TESTDIR/try-again.sh" curl -s https://downloads.imagej.net/ | grep '<a href' | sed 's/.*<a href="\([^"]*\)">.*/\1/' | LC_COLLATE=C sort
  3dviewer/
  ?C=D;O=A
  ISBI-2012-challenge.zip
  ImageJ2-20160205.zip
  MBF-ImageJ-20090120.zip
  bootstrapJ8.js
  fiji/
  ij-samples.zip
  imagej/
  incoming/
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
  ~tpietzsch/

Check Fiji archive links:

  $ "$TESTDIR/try-again.sh" curl -s https://downloads.imagej.net/fiji/archive/ | grep '<a href' | sed 's/.*<a href="\([^"]*\)">.*/\1/' | LC_COLLATE=C sort | head
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

  $ "$TESTDIR/try-again.sh" curl -s https://downloads.imagej.net/fiji/stable/ | grep '<a href' | sed 's/.*<a href="\([^"]*\)">.*/\1/' | LC_COLLATE=C sort
  /fiji/
  ?C=D;O=A
  fiji-stable-linux64-jdk.zip
  fiji-stable-linux64-jdk.zip.md5
  fiji-stable-linux64-jdk.zip.sha1
  fiji-stable-linux64-jdk.zip.sha256
  fiji-stable-linux64-jdk.zip.sha512
  fiji-stable-linux64-jre.zip
  fiji-stable-linux64-jre.zip.md5
  fiji-stable-linux64-jre.zip.sha1
  fiji-stable-linux64-jre.zip.sha256
  fiji-stable-linux64-jre.zip.sha512
  fiji-stable-macosx-jdk.zip
  fiji-stable-macosx-jdk.zip.md5
  fiji-stable-macosx-jdk.zip.sha1
  fiji-stable-macosx-jdk.zip.sha256
  fiji-stable-macosx-jdk.zip.sha512
  fiji-stable-macosx-jre.zip
  fiji-stable-macosx-jre.zip.md5
  fiji-stable-macosx-jre.zip.sha1
  fiji-stable-macosx-jre.zip.sha256
  fiji-stable-macosx-jre.zip.sha512
  fiji-stable-portable-nojava.zip
  fiji-stable-portable-nojava.zip.md5
  fiji-stable-portable-nojava.zip.sha1
  fiji-stable-portable-nojava.zip.sha256
  fiji-stable-portable-nojava.zip.sha512
  fiji-stable-win32-jdk.zip
  fiji-stable-win32-jdk.zip.md5
  fiji-stable-win32-jdk.zip.sha1
  fiji-stable-win32-jdk.zip.sha256
  fiji-stable-win32-jdk.zip.sha512
  fiji-stable-win32-jre.zip
  fiji-stable-win32-jre.zip.md5
  fiji-stable-win32-jre.zip.sha1
  fiji-stable-win32-jre.zip.sha256
  fiji-stable-win32-jre.zip.sha512
  fiji-stable-win64-jdk.zip
  fiji-stable-win64-jdk.zip.md5
  fiji-stable-win64-jdk.zip.sha1
  fiji-stable-win64-jdk.zip.sha256
  fiji-stable-win64-jdk.zip.sha512
  fiji-stable-win64-jre.zip
  fiji-stable-win64-jre.zip.md5
  fiji-stable-win64-jre.zip.sha1
  fiji-stable-win64-jre.zip.sha256
  fiji-stable-win64-jre.zip.sha512

  $ "$TESTDIR/try-again.sh" curl -s https://downloads.imagej.net/fiji/latest/ | grep '<a href' | sed 's/.*<a href="\([^"]*\)">.*/\1/' | LC_COLLATE=C sort
  /fiji/
  ?C=D;O=A
  fiji-latest-linux-arm64-jdk.zip
  fiji-latest-linux-arm64-jdk.zip.md5
  fiji-latest-linux-arm64-jdk.zip.sha1
  fiji-latest-linux-arm64-jdk.zip.sha256
  fiji-latest-linux-arm64-jdk.zip.sha512
  fiji-latest-linux-arm64-jre.zip
  fiji-latest-linux-arm64-jre.zip.md5
  fiji-latest-linux-arm64-jre.zip.sha1
  fiji-latest-linux-arm64-jre.zip.sha256
  fiji-latest-linux-arm64-jre.zip.sha512
  fiji-latest-linux64-jdk.zip
  fiji-latest-linux64-jdk.zip.md5
  fiji-latest-linux64-jdk.zip.sha1
  fiji-latest-linux64-jdk.zip.sha256
  fiji-latest-linux64-jdk.zip.sha512
  fiji-latest-linux64-jre.zip
  fiji-latest-linux64-jre.zip.md5
  fiji-latest-linux64-jre.zip.sha1
  fiji-latest-linux64-jre.zip.sha256
  fiji-latest-linux64-jre.zip.sha512
  fiji-latest-macos-arm64-jdk.zip
  fiji-latest-macos-arm64-jdk.zip.md5
  fiji-latest-macos-arm64-jdk.zip.sha1
  fiji-latest-macos-arm64-jdk.zip.sha256
  fiji-latest-macos-arm64-jdk.zip.sha512
  fiji-latest-macos-arm64-jre.zip
  fiji-latest-macos-arm64-jre.zip.md5
  fiji-latest-macos-arm64-jre.zip.sha1
  fiji-latest-macos-arm64-jre.zip.sha256
  fiji-latest-macos-arm64-jre.zip.sha512
  fiji-latest-macos64-jdk.zip
  fiji-latest-macos64-jdk.zip.md5
  fiji-latest-macos64-jdk.zip.sha1
  fiji-latest-macos64-jdk.zip.sha256
  fiji-latest-macos64-jdk.zip.sha512
  fiji-latest-macos64-jre.zip
  fiji-latest-macos64-jre.zip.md5
  fiji-latest-macos64-jre.zip.sha1
  fiji-latest-macos64-jre.zip.sha256
  fiji-latest-macos64-jre.zip.sha512
  fiji-latest-portable-nojava.zip
  fiji-latest-portable-nojava.zip.md5
  fiji-latest-portable-nojava.zip.sha1
  fiji-latest-portable-nojava.zip.sha256
  fiji-latest-portable-nojava.zip.sha512
  fiji-latest-win64-jdk.zip
  fiji-latest-win64-jdk.zip.md5
  fiji-latest-win64-jdk.zip.sha1
  fiji-latest-win64-jdk.zip.sha256
  fiji-latest-win64-jdk.zip.sha512
  fiji-latest-win64-jre.zip
  fiji-latest-win64-jre.zip.md5
  fiji-latest-win64-jre.zip.sha1
  fiji-latest-win64-jre.zip.sha256
  fiji-latest-win64-jre.zip.sha512

  $ "$TESTDIR/try-again.sh" curl -Is https://downloads.imagej.net/fiji/latest/fiji-latest-win64-jre.zip | grep '^\(HTTP\|Content-Type\)'
  HTTP/1.1 200 OK\r (esc)
  Content-Type: application/zip\r (esc)

Check public rsync access:

  $ "$TESTDIR/try-again.sh" rsync downloads.imagej.net:: | grep downloads.imagej.net | xargs
  downloads.imagej.net ImageJ downloads
