NB: Additional tests for imagej.net behavior relating to the ImageJ Updater
are in the repository https://github.com/imagej/list-of-update-sites.

Check IP address:

  $ host imagej.net | sort
  imagej.net has address 144.92.48.180
  imagej.net mail is handled by 10 mx1.improvmx.com.
  imagej.net mail is handled by 20 mx2.improvmx.com.

  $ host www.imagej.net
  www.imagej.net has address 144.92.48.180

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

Check proxied images from wsr.imagej.net:

  $ curl -s https://imagej.net/plugins/ | grep '\(<title>\|og:url\)' | sed 's/^ *//'
  <title>Plugins</title>
  <meta content="https://imagej.github.io/plugins/index" property="og:url">

Check primary GitHub Pages content:

  $ curl -s https://imagej.net/ | grep '<title>' | xargs
  <title>ImageJ</title>

  $ curl -s https://imagej.net/editing/ | grep '<title>' | xargs
  <title>Editing the Wiki</title>

  $ curl -s https://imagej.net/learn/ | grep '<title>' | xargs
  <title>Introduction</title>

  $ curl -s https://imagej.net/plugins/ | grep '<title>' | xargs
  <title>Plugins</title>

  $ curl -s https://imagej.net/plugins/visbio | grep '<title>' | xargs
  <title>VisBio Fiji plugin</title>

Check secondary GitHub Pages content:

  $ curl -Is https://imagej.net/conference | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://conference.imagej.net

  $ curl -s https://imagej.net/list-of-update-sites/ | grep '<title>' | xargs
  <title>List of update sites - ImageJ</title>

  $ curl -s https://imagej.net/mbf/ | grep '<title>' | xargs
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
  <title>Tutorials</title>

  $ curl -Is https://imagej.net/workshops | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://workshops.imagej.net

Check site-specific redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-imagej.net.txt"
  DONE

Check legacy redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-legacy.txt" -d imagej.net
  DONE
