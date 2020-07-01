Check IP address:

  $ host downloads.imagej.net
  downloads.imagej.net has address 144.92.48.183

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://downloads.imagej.net/hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://downloads.imagej.net/hello

Check hello access:

  $ curl -s https://downloads.imagej.net/hello
  downloads.imagej.net on devonrex

Check directory index:

  $ curl -s https://downloads.imagej.net/ | head -n5
  <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
  <html>
   <head>
    <title>Index of /</title>
   </head>
