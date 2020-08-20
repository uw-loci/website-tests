NB: Additional tests for imagej.net behavior relating to the ImageJ Updater
are in the repository https://github.com/imagej/list-of-update-sites.

Check IP address:

  $ host imagej.net | sort
  imagej.net has address 144.92.48.182
  imagej.net mail is handled by 10 mx1.improvmx.com.
  imagej.net mail is handled by 20 mx2.improvmx.com.

Check www redirect:

  $ curl -Is http://www.imagej.net | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: http://imagej.net/

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/.hello

Check hello access:

  $ curl -s https://imagej.net/.hello
  imagej.net on devonrex

Check top-level redirect:

  $ curl -Is https://imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Welcome

  $ curl -s https://imagej.net/Welcome | grep '<title>' | xargs
  <title>ImageJ</title>

Check other special redirects:

  $ curl -Is https://imagej.net/List_of_update_sites | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/list-of-update-sites/

  $ curl -Is https://imagej.net/dokuwiki_migration | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/DokuWiki_Migration

  $ curl -Is https://imagej.net/awesome/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Usage

  $ curl -Is https://imagej.net/awesome/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Usage

Check redirects of old wiki links:

  $ curl -Is https://imagej.net/wiki/Foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Foo

  $ curl -Is https://imagej.net/mediawiki/phase3/Foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Foo

Check proxy content from GitHub Pages:

  $ curl -Is https://imagej.net/conference | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://conference.imagej.net

  $ curl -s https://imagej.net/list-of-update-sites/ | grep '<title>'
  <title>List of update sites - ImageJ</title>

  $ curl -s https://imagej.net/mbf/ | grep '<title>'
  <title>MBF_ImageJ - Home</title>

  $ curl -s https://imagej.net/pipermail/imagej-bugs/ | grep '<title>' | xargs
  <title>The Imagej-bugs Archives</title>

  $ curl -s https://imagej.net/pipermail/imagej-builds/ | grep '<title>' | xargs
  <title>The ImageJ-builds Archives</title>

  $ curl -s https://imagej.net/pipermail/imagej-devel/ | grep '<title>' | xargs
  <title>The ImageJ-devel Archives</title>

  $ curl -s https://imagej.net/presentations/ | grep '<title>' | xargs
  <title>ImageJ Presentations</title>

  $ curl -s https://imagej.net/tickets/ | grep -A2 '<title>' | xargs
  <title> ImageJ Trac Ticket Archive </title>

  $ curl -s https://imagej.net/tutorials/ | grep '<title>' | xargs
  <title>ImageJ Tutorials</title>

  $ curl -Is https://imagej.net/workshops | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://workshops.imagej.net

Check proxy content from ImageJ 1.x mirror:

  $ curl -s https://imagej.net/index.html | grep -C2 '<title>'
  <html>
  <head>
  <title>ImageJ</title>
  <link rel="stylesheet" href="docs/ij.css" type="text/css" >
  <link rel="shortcut icon" href="https://rsb.info.nih.gov/ij/favicon.ico">

  $ curl -s https://imagej.net/developer/macro/functions.html | grep '<title>'
  <title>Built-in Macro Functions</title>

Check legacy redirects:

  $ curl -Is https://imagej.net/mailman/admin/imagej-devel | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/pipermail/imagej-devel

  $ curl -Is https://imagej.net/mailman/admin/imagej-devel/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/pipermail/imagej-devel

  $ curl -Is https://imagej.net/mailman/listinfo/imagej-devel | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/pipermail/imagej-devel

  $ curl -Is https://imagej.net/mailman/listinfo/imagej-devel/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/pipermail/imagej-devel

  $ curl -Is https://imagej.net/svn/decon | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/opencl-decon

  $ curl -Is https://imagej.net/svn/decon/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/opencl-decon

  $ curl -Is https://imagej.net/svn/imagej | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imagej/imagej

  $ curl -Is https://imagej.net/svn/imagej/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imagej/imagej

  $ curl -Is https://imagej.net/svn/internal | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://imagej.net/svn/internal/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://imagej.net/svn/WiscScan | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://imagej.net/svn/WiscScan/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://imagej.net/svn/misc | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

  $ curl -Is https://imagej.net/svn/misc/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

  $ curl -Is https://imagej.net/trac/imglib | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imglib/imglib2

  $ curl -Is https://imagej.net/trac/imglib/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/imglib/imglib2

  $ curl -Is https://imagej.net/trac/imagej/ticket/1234 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/tickets/1234

  $ curl -Is https://imagej.net/trac/imagej | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/tickets/

  $ curl -Is https://imagej.net/trac/software/ticket/1234 | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://uw-loci.github.io/tickets/1234

  $ curl -Is https://imagej.net/trac/software | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://uw-loci.github.io/tickets/

  $ curl -Is https://imagej.net/trac/internal | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://imagej.net/trac/internal/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://imagej.net/trac/WiscScan | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://imagej.net/trac/WiscScan/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci/wiscscan

  $ curl -Is https://imagej.net/trac/misc | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci

  $ curl -Is https://imagej.net/trac/misc/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://github.com/uw-loci
