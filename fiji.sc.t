Check IP address:

  $ host fiji.sc | sort
  fiji.sc has address 144.92.48.190
  fiji.sc mail is handled by 10 mx1.improvmx.com.
  fiji.sc mail is handled by 20 mx2.improvmx.com.

Check www redirect:

  $ curl -Is http://www.fiji.sc | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: http://fiji.sc/

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://fiji.sc/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://fiji.sc/.hello

Check hello access:

  $ curl -s https://fiji.sc/.hello
  fiji.sc on devonrex

Check front page:

  $ curl -s https://fiji.sc/ | grep '<title>' | xargs
  <title>Fiji: ImageJ, with Batteries Included</title>

Check GitHub Pages content:

  $ curl -s https://fiji.sc/css/global.css | head -n3
  /* This Source Code Form is subject to the terms of the Mozilla Public
   * License, v. 2.0. If a copy of the MPL was not distributed with this
   * file, You can obtain one at http://mozilla.org/MPL/2.0/.

  $ expected=$(curl -s https://raw.githubusercontent.com/fiji/fiji.github.io/master/css/global.css | md5sum)
  $ actual=$(curl -s https://fiji.sc/css/global.css | md5sum)
  $ test "$expected" = "$actual" && echo MATCH || echo "$expected != $actual"
  MATCH

  $ curl -s https://fiji.sc/site/css/style.css | head -n4
  body {
    padding-top: 70px;
    padding-bottom: 30px;
  }

  $ expected=$(curl -s https://raw.githubusercontent.com/fiji/fiji.github.io/master/site/css/style.css | md5sum)
  $ actual=$(curl -s https://fiji.sc/site/css/style.css | md5sum)
  $ test "$expected" = "$actual" && echo MATCH || echo "$expected != $actual"
  MATCH

Check static Fiji BugZilla content:

  $ curl -s https://fiji.sc/bug/ | grep '<title>' | xargs
  <title>Bug List</title>

  $ curl -s https://fiji.sc/bug/1265 | grep '<title>' | xargs
  <title>Bug 1265 &ndash; Cell Counter Hates Me</title>

  $ curl -s https://fiji.sc/attach/100/Exception.txt | head -n1
  Fiji/ImageJ 1.47o; Java 1.6.0_24 [64-bit]; Windows 7 6.1; 29MB of 2945MB (<1%)

Check proxying of old samples links over plain HTTP from Java:

  $ curl -s -A Java http://fiji.sc/samples/blobs.png | md5sum
  c232c35c2b7eaf115139f8b62d4c8087  -

Check site-specific redirects:

  $ "$TESTDIR/check-redirects.sh" "$TESTDIR/redirects-fiji.sc.txt"
  DONE
