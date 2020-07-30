Check IP address:

  $ host mirror.imagej.net
  mirror.imagej.net has address 144.92.48.184

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://mirror.imagej.net/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://mirror.imagej.net/.hello

Check hello access:

  $ curl -s https://mirror.imagej.net/.hello
  mirror.imagej.net on devonrex

Check top-level access:

  $ curl -s https://mirror.imagej.net/ | head -n7
  <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
  <head>
  <title>ImageJ</title>
  <link rel="stylesheet" href="docs/ij.css" type="text/css" >
  <link rel="shortcut icon" href="https://rsb.info.nih.gov/ij/favicon.ico">
  </head>
