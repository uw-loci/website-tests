NB: Additional tests for imagej.net behavior relating to the ImageJ Updater
are in the repository https://github.com/imagej/list-of-update-sites.

Check IP address:

  $ host imagej.net | sort
  imagej.net has address 144.92.48.182
  imagej.net mail is handled by 10 mx1.improvmx.com.
  imagej.net mail is handled by 20 mx2.improvmx.com.

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://imagej.net/hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/hello

Check hello access:

  $ curl -s https://imagej.net/hello
  imagej.net on devonrex

Check top-level redirect:

  $ curl -Is https://imagej.net/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Welcome

  $ curl -s https://imagej.net/Welcome | grep '<title>' | xargs
  <head><title>ImageJ</title></head>

Check other special redirects:

  $ curl -Is https://imagej.net/List_of_update_sites | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.github.io/list-of-update-sites/

  $ curl -Is https://imagej.net/dokuwiki_migration | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/DokuWiki_Migration

  $ curl -Is https://imagej.net/awesome/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Usage

  $ curl -Is https://imagej.net/awesome/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://imagej.net/Usage

Check temporary maintenance notice:

  $ curl -s https://imagej.net/Foo | grep '<h1>' | xargs
  <h1>Site under maintenance</h1>

  $ curl -s https://imagej.net/wiki/Foo | grep '<h1>' | xargs
  <h1>Site under maintenance</h1>

  $ curl -s https://imagej.net/mediawiki/phase3/Foo | grep '<h1>' | xargs
  <h1>Site under maintenance</h1>

Check proxy content from ImageJ 1.x mirror:

  $ curl -s https://imagej.net/index.html | grep -C2 '<title>'
  <html>
  <head>
  <title>ImageJ</title>
  <link rel="stylesheet" href="docs/ij.css" type="text/css" >
  <link rel="shortcut icon" href="https://rsb.info.nih.gov/ij/favicon.ico">

  $ curl -s https://imagej.net/developer/macro/functions.html | grep '<title>'
  <title>Built-in Macro Functions</title>
