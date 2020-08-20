Check IP address:

  $ host developer.imagej.net
  developer.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://developer.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://developer.imagej.net/.hello

Check hello access:

  $ curl -s https://developer.imagej.net/.hello
  developer.imagej.net on devonrex

Check blanket redirect:

  $ curl -Is https://developer.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Development

  $ curl -Is https://developer.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Development

Check site-specific redirects:

  $ curl -Is https://developer.imagej.net/faq | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/FAQ

  $ curl -Is https://developer.imagej.net/faq/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/FAQ

  $ curl -Is https://developer.imagej.net/roadmap | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Roadmap

  $ curl -Is https://developer.imagej.net/roadmap/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Roadmap

Check legacy redirects:

  $ curl -Is https://developer.imagej.net/pipermail/imagej-devel/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/pipermail/imagej-devel/foo

  $ curl -Is https://developer.imagej.net/mailman/admin/imagej-devel | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/pipermail/imagej-devel

  $ curl -Is https://developer.imagej.net/mailman/admin/imagej-devel/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/pipermail/imagej-devel

  $ curl -Is https://developer.imagej.net/mailman/listinfo/imagej-devel | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/pipermail/imagej-devel

  $ curl -Is https://developer.imagej.net/mailman/listinfo/imagej-devel/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/pipermail/imagej-devel

  $ curl -Is https://developer.imagej.net/svn/decon | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/opencl-decon

  $ curl -Is https://developer.imagej.net/svn/decon/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/opencl-decon

  $ curl -Is https://developer.imagej.net/svn/imagej | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imagej/imagej

  $ curl -Is https://developer.imagej.net/svn/imagej/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imagej/imagej

  $ curl -Is https://developer.imagej.net/svn/internal | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://developer.imagej.net/svn/internal/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://developer.imagej.net/svn/WiscScan | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://developer.imagej.net/svn/WiscScan/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://developer.imagej.net/svn/misc | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

  $ curl -Is https://developer.imagej.net/svn/misc/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

  $ curl -Is https://developer.imagej.net/trac/imglib | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imglib/imglib2

  $ curl -Is https://developer.imagej.net/trac/imglib/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imglib/imglib2

  $ curl -Is https://developer.imagej.net/trac/imagej/ticket/1234 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/tickets/1234

  $ curl -Is https://developer.imagej.net/trac/imagej | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/tickets/

  $ curl -Is https://developer.imagej.net/trac/software/ticket/1234 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://uw-loci.github.io/tickets/1234

  $ curl -Is https://developer.imagej.net/trac/software | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://uw-loci.github.io/tickets/

  $ curl -Is https://developer.imagej.net/trac/internal | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://developer.imagej.net/trac/internal/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://developer.imagej.net/trac/WiscScan | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://developer.imagej.net/trac/WiscScan/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://developer.imagej.net/trac/misc | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

  $ curl -Is https://developer.imagej.net/trac/misc/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci
