Check IP address:

  $ host code.imagej.net
  code.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://code.imagej.net/hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://code.imagej.net/hello

Check hello access:

  $ curl -s https://code.imagej.net/hello
  code.imagej.net on devonrex

Check blanket redirect:

  $ curl -Is https://code.imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imagej/imagej

  $ curl -Is https://code.imagej.net/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imagej/imagej

Check plain content:

  $ curl -s https://code.imagej.net/irc-logs/ | head -n5
  <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
  <html>
   <head>
    <title>Index of /irc-logs</title>
   </head>

  $ curl -s https://code.imagej.net/licenses/ | head -n5
  <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
  <html>
   <head>
    <title>Index of /licenses</title>
   </head>

Check site-specific redirects:

  $ curl -Is https://code.imagej.net/jenkins | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://jenkins.imagej.net

  $ curl -Is https://code.imagej.net/jenkins/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://jenkins.imagej.net/foo

  $ curl -Is https://code.imagej.net/maps | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Usage

  $ curl -Is https://code.imagej.net/maps/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Usage

  $ curl -Is https://code.imagej.net/maven2 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://maven.scijava.org

  $ curl -Is https://code.imagej.net/maven2/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://maven.scijava.org/foo

  $ curl -Is https://code.imagej.net/slim-curve | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://flimlib.github.io/

  $ curl -Is https://code.imagej.net/slim-curve/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://flimlib.github.io/

  $ curl -Is https://code.imagej.net/status | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://status.scijava.org/

  $ curl -Is https://code.imagej.net/status/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://status.scijava.org/

Check legacy redirects:

  $ curl -Is https://code.imagej.net/pipermail/imagej-devel/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/pipermail/imagej-devel/foo

  $ curl -Is https://code.imagej.net/mailman/admin/imagej-devel | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/pipermail/imagej-devel

  $ curl -Is https://code.imagej.net/mailman/admin/imagej-devel/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/pipermail/imagej-devel

  $ curl -Is https://code.imagej.net/mailman/listinfo/imagej-devel | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/pipermail/imagej-devel

  $ curl -Is https://code.imagej.net/mailman/listinfo/imagej-devel/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/pipermail/imagej-devel

  $ curl -Is https://code.imagej.net/svn/decon | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/opencl-decon

  $ curl -Is https://code.imagej.net/svn/decon/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/opencl-decon

  $ curl -Is https://code.imagej.net/svn/imagej | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imagej/imagej

  $ curl -Is https://code.imagej.net/svn/imagej/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imagej/imagej

  $ curl -Is https://code.imagej.net/svn/internal | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://code.imagej.net/svn/internal/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://code.imagej.net/svn/WiscScan | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://code.imagej.net/svn/WiscScan/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://code.imagej.net/svn/misc | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

  $ curl -Is https://code.imagej.net/svn/misc/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

  $ curl -Is https://code.imagej.net/trac/imglib | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imglib/imglib2

  $ curl -Is https://code.imagej.net/trac/imglib/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imglib/imglib2

  $ curl -Is https://code.imagej.net/trac/imagej/ticket/1234 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/tickets/1234

  $ curl -Is https://code.imagej.net/trac/imagej | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/tickets/

  $ curl -Is https://code.imagej.net/trac/software/ticket/1234 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://uw-loci.github.io/tickets/1234

  $ curl -Is https://code.imagej.net/trac/software | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://uw-loci.github.io/tickets/

  $ curl -Is https://code.imagej.net/trac/internal | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://code.imagej.net/trac/internal/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://code.imagej.net/trac/WiscScan | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://code.imagej.net/trac/WiscScan/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://code.imagej.net/trac/misc | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

  $ curl -Is https://code.imagej.net/trac/misc/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci
