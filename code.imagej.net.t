Check IP address:

  $ host code.imagej.net
  code.imagej.net has address 144.92.48.189

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://code.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://code.imagej.net/.hello

Check hello access:

  $ curl -s https://code.imagej.net/.hello
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

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-code.imagej.net.txt" code.imagej.net
  DONE

Check legacy redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-legacy.txt" code.imagej.net
  DONE
