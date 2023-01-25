NB: Additional tests for imagej.net behavior relating to the ImageJ Updater
are in the repository https://github.com/imagej/list-of-update-sites.

Check IP address:

  $ host imagej.net | sort
  imagej.net has address 144.92.48.180
  imagej.net mail is handled by 10 mx1.forwardemail.net.
  imagej.net mail is handled by 10 mx2.forwardemail.net.


  $ host www.imagej.net
  www.imagej.net has address 144.92.48.180

Check www redirect:

  $ curl -Is http://www.imagej.net | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: http://imagej.net/\r (esc)

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://imagej.net/.hello\r (esc)

Check hello access:

  $ curl -s https://imagej.net/.hello
  imagej.net on abyssinian

Check content from wsr.imagej.net:

  $ curl -s https://imagej.net/ij/ | grep -A1 '<title>'
  <title>ImageJ</title>
  <link rel="stylesheet" href="docs/ij.css" type="text/css" >

  $ curl -s https://imagej.net/ij/developer/ | grep -A1 '<title>'
  <title>Developer Resources</title>
  <link rel="stylesheet" href="../docs/ij.css" type="text/css">

Check primary GitHub Pages content:

  $ curl -s https://imagej.net/ | grep '<title>' | xargs
  <title>ImageJ Wiki</title>

  $ curl -s https://imagej.net/editing/ | grep '<title>' | xargs
  <title>Editing the Wiki</title>

  $ curl -s https://imagej.net/learn/ | grep '<title>' | xargs
  <title>Introduction</title>

  $ curl -s https://imagej.net/plugins/ | grep '\(<title>\|og:url\)' | sed 's/^ *//'
  <title>Plugins</title>
  <meta content="https://imagej.github.io/plugins/index" property="og:url">

  $ curl -s https://imagej.net/plugins/visbio | grep '<title>' | xargs
  <title>VisBio Ortho Stack</title>

Check secondary GitHub Pages content:

  $ curl -Is https://imagej.net/conference | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://conference.imagej.net\r (esc)

  $ curl -s https://imagej.net/list-of-update-sites/ | grep '<title>' | xargs
  <title>List of update sites - ImageJ</title>

  $ curl -s https://imagej.net/mbf/ | grep '<title>' | xargs
  <title>MBF_ImageJ - Home</title>\r (esc)

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
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://workshops.imagej.net\r (esc)

Check site-specific redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-imagej.net.txt"
  DONE

Check legacy redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-legacy.txt" -d imagej.net
  DONE
