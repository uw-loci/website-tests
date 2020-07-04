Check IP address:

  $ host javadoc.scijava.org
  javadoc.scijava.org has address 144.92.48.198

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://javadoc.scijava.org/hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://javadoc.scijava.org/hello

Check hello access:

  $ curl -s https://javadoc.scijava.org/hello
  javadoc.scijava.org on devonrex

Check access to proxied content:

  $ curl -s https://javadoc.scijava.org/ | grep '<title>'
  <title>SciJava Javadoc</title>

  $ curl -s https://javadoc.scijava.org/Java8/ | grep '<title>'
  <title>Java Platform SE 8 </title>

  $ curl -s https://javadoc.scijava.org/Java9/ | grep '<title>'
  <title>Java SE 9 &amp; JDK 9 </title>

  $ curl -s https://javadoc.scijava.org/Java10/ | grep '<title>'
  <title>Java SE 10 &amp; JDK 10 </title>

  $ curl -s https://javadoc.scijava.org/Java11/ | grep '<title>'
  <title>Overview (Java SE 11 &amp; JDK 11 )</title>

  $ curl -s https://javadoc.scijava.org/Java12/ | grep '<title>'
  <title>Overview (Java SE 12 &amp; JDK 12 )</title>

  $ curl -s https://javadoc.scijava.org/Java13/ | grep '<title>'
  <title>Overview (Java SE 13 &amp; JDK 13 )</title>

  $ curl -s https://javadoc.scijava.org/Java14/ | grep '<title>'
  <title>Overview (Java SE 14 &amp; JDK 14)</title>

  $ curl -s https://javadoc.scijava.org/JavaFX8/ | grep '<title>'
  <title>JavaFX 8</title>
