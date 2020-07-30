Check IP address:

  $ host loci.wisc.edu | sort
  loci.wisc.edu has address 144.92.48.134
  loci.wisc.edu mail is handled by 10 mta1.wiscmail.wisc.edu.
  loci.wisc.edu mail is handled by 10 mta2.wiscmail.wisc.edu.
  loci.wisc.edu mail is handled by 10 mta3.wiscmail.wisc.edu.
  loci.wisc.edu mail is handled by 10 mta4.wiscmail.wisc.edu.
  loci.wisc.edu mail is handled by 10 mta5.wiscmail.wisc.edu.
  loci.wisc.edu mail is handled by 5 smtp.wiscmail.wisc.edu.

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://loci.wisc.edu/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://loci.wisc.edu/.hello

Check hello access:

  $ curl -s https://loci.wisc.edu/.hello
  loci.wisc.edu on devonrex

Check blanket redirect:

  $ curl -Is https://loci.wisc.edu/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 302 Found
  Location: https://eliceirilab.org/

  $ curl -Is https://loci.wisc.edu/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 302 Found
  Location: https://eliceirilab.org/

Check legacy redirects:

  $ curl -Is https://loci.wisc.edu/pipermail/imagej-devel/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/pipermail/imagej-devel/foo

  $ curl -Is https://loci.wisc.edu/mailman/admin/imagej-devel | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/pipermail/imagej-devel

  $ curl -Is https://loci.wisc.edu/mailman/admin/imagej-devel/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/pipermail/imagej-devel

  $ curl -Is https://loci.wisc.edu/mailman/listinfo/imagej-devel | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/pipermail/imagej-devel

  $ curl -Is https://loci.wisc.edu/mailman/listinfo/imagej-devel/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/pipermail/imagej-devel

  $ curl -Is https://loci.wisc.edu/svn/decon | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/opencl-decon

  $ curl -Is https://loci.wisc.edu/svn/decon/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/opencl-decon

  $ curl -Is https://loci.wisc.edu/svn/imagej | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imagej/imagej

  $ curl -Is https://loci.wisc.edu/svn/imagej/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imagej/imagej

  $ curl -Is https://loci.wisc.edu/svn/internal | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://loci.wisc.edu/svn/internal/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://loci.wisc.edu/svn/WiscScan | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://loci.wisc.edu/svn/WiscScan/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://loci.wisc.edu/svn/misc | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

  $ curl -Is https://loci.wisc.edu/svn/misc/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

  $ curl -Is https://loci.wisc.edu/trac/imglib | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imglib/imglib2

  $ curl -Is https://loci.wisc.edu/trac/imglib/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imglib/imglib2

  $ curl -Is https://loci.wisc.edu/trac/imagej/ticket/1234 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/tickets/1234

  $ curl -Is https://loci.wisc.edu/trac/imagej | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/tickets/

  $ curl -Is https://loci.wisc.edu/trac/software/ticket/1234 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://uw-loci.github.io/tickets/1234

  $ curl -Is https://loci.wisc.edu/trac/software | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://uw-loci.github.io/tickets/

  $ curl -Is https://loci.wisc.edu/trac/internal | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://loci.wisc.edu/trac/internal/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://loci.wisc.edu/trac/WiscScan | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://loci.wisc.edu/trac/WiscScan/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://loci.wisc.edu/trac/misc | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

  $ curl -Is https://loci.wisc.edu/trac/misc/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci
