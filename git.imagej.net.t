Check IP address:

  $ host git.imagej.net
  git.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://git.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://git.imagej.net/.hello

Check hello access:

  $ curl -s https://git.imagej.net/.hello
  git.imagej.net on devonrex

Check blanket redirect:

  $ curl -Is https://git.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Source_code

  $ curl -Is https://git.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Source_code

  $ curl -Is https://git.imagej.net/git/foo.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Source_code

Check repository redirects:

  $ curl -Is https://git.imagej.net/git/ImageJA.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imagej/ImageJA

  $ curl -Is https://git.imagej.net/git/JMathLib.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/fiji/JMathLib

  $ curl -Is https://git.imagej.net/git/Yawi_2D.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/fiji/Yawi_2D

  $ curl -Is https://git.imagej.net/git/Yawi_3D.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/fiji/Yawi_3D

  $ curl -Is https://git.imagej.net/git/bioimagexd.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/scijava/bioimagexd

  $ curl -Is https://git.imagej.net/git/fiji-historical.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/fiji/fiji-historical

  $ curl -Is https://git.imagej.net/git/fiji.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/fiji/fiji

  $ curl -Is https://git.imagej.net/git/imagej.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imagej/imagej

  $ curl -Is https://git.imagej.net/git/imglib.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imglib/imglib2

  $ curl -Is https://git.imagej.net/git/iterativedeconv.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/fiji/iterativedeconv

  $ curl -Is https://git.imagej.net/git/java/linux-amd64.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/fiji/java6-linux64

  $ curl -Is https://git.imagej.net/git/java/linux.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/fiji/java6-linux32

  $ curl -Is https://git.imagej.net/git/java/macosx-java3d.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/fiji/java6-macosx

  $ curl -Is https://git.imagej.net/git/java/win32.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/fiji/java6-win32

  $ curl -Is https://git.imagej.net/git/java/win64.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/fiji/java6-win64

  $ curl -Is https://git.imagej.net/git/jex.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/jaywarrick/JEX

  $ curl -Is https://git.imagej.net/git/micromanager1.4.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/micro-manager/micro-manager

  $ curl -Is https://git.imagej.net/git/mipav.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/svn2github/mipav

  $ curl -Is https://git.imagej.net/git/scripting.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/scijava/javax-scripting

  $ curl -Is https://git.imagej.net/git/spectraldeconv.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/fiji/spectraldeconv

  $ curl -Is https://git.imagej.net/git/tcljava.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/scijava/tcljava

  $ curl -Is https://git.imagej.net/git/vaa3d.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/Vaa3D/v3d_external

  $ curl -Is https://git.imagej.net/git/vib.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/fiji/vib-historical

  $ curl -Is https://git.imagej.net/git/wiscscan.git | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan
