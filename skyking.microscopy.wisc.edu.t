Check IP address:

  $ host skyking.microscopy.wisc.edu
  skyking.microscopy.wisc.edu has address 144.92.48.134

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://skyking.microscopy.wisc.edu/hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://skyking.microscopy.wisc.edu/hello

Check hello access:

  $ curl -s https://skyking.microscopy.wisc.edu/hello
  skyking.microscopy.wisc.edu on devonrex

Check loci-logo.png access:

  $ curl -Is https://skyking.microscopy.wisc.edu/loci-logo.png | grep '^\(HTTP\|Content-\)'
  HTTP/1.1 200 OK
  Content-Length: 17540
  Content-Type: image/png

Check blanket redirect:

  $ curl -Is https://skyking.microscopy.wisc.edu/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

  $ curl -Is https://skyking.microscopy.wisc.edu/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

Check site-specific redirects:

  $ curl -Is https://skyking.microscopy.wisc.edu/curtis | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://downloads.imagej.net/~curtis

  $ curl -Is https://skyking.microscopy.wisc.edu/curtis/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://downloads.imagej.net/~curtis/foo

Check legacy redirects:

  $ curl -Is https://skyking.microscopy.wisc.edu/pipermail/imagej-devel/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/pipermail/imagej-devel/foo

  $ curl -Is https://skyking.microscopy.wisc.edu/mailman/admin/imagej-devel | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/pipermail/imagej-devel

  $ curl -Is https://skyking.microscopy.wisc.edu/mailman/admin/imagej-devel/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/pipermail/imagej-devel

  $ curl -Is https://skyking.microscopy.wisc.edu/mailman/listinfo/imagej-devel | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/pipermail/imagej-devel

  $ curl -Is https://skyking.microscopy.wisc.edu/mailman/listinfo/imagej-devel/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/pipermail/imagej-devel

  $ curl -Is https://skyking.microscopy.wisc.edu/svn/decon | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/opencl-decon

  $ curl -Is https://skyking.microscopy.wisc.edu/svn/decon/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/opencl-decon

  $ curl -Is https://skyking.microscopy.wisc.edu/svn/imagej | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imagej/imagej

  $ curl -Is https://skyking.microscopy.wisc.edu/svn/imagej/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imagej/imagej

  $ curl -Is https://skyking.microscopy.wisc.edu/svn/internal | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://skyking.microscopy.wisc.edu/svn/internal/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://skyking.microscopy.wisc.edu/svn/WiscScan | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://skyking.microscopy.wisc.edu/svn/WiscScan/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://skyking.microscopy.wisc.edu/svn/misc | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

  $ curl -Is https://skyking.microscopy.wisc.edu/svn/misc/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

  $ curl -Is https://skyking.microscopy.wisc.edu/trac/imglib | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imglib/imglib2

  $ curl -Is https://skyking.microscopy.wisc.edu/trac/imglib/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imglib/imglib2

  $ curl -Is https://skyking.microscopy.wisc.edu/trac/imagej/ticket/1234 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/tickets/1234

  $ curl -Is https://skyking.microscopy.wisc.edu/trac/imagej | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/tickets/

  $ curl -Is https://skyking.microscopy.wisc.edu/trac/software/ticket/1234 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://uw-loci.github.io/tickets/1234

  $ curl -Is https://skyking.microscopy.wisc.edu/trac/software | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://uw-loci.github.io/tickets/

  $ curl -Is https://skyking.microscopy.wisc.edu/trac/internal | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://skyking.microscopy.wisc.edu/trac/internal/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://skyking.microscopy.wisc.edu/trac/WiscScan | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://skyking.microscopy.wisc.edu/trac/WiscScan/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://skyking.microscopy.wisc.edu/trac/misc | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

  $ curl -Is https://skyking.microscopy.wisc.edu/trac/misc/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci
