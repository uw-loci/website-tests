Check IP address:

  $ host image.sc
  image.sc has address 144.92.48.194
  image.sc mail is handled by 10 mx1.improvmx.com.
  image.sc mail is handled by 20 mx2.improvmx.com.

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://image.sc/hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://image.sc/hello

Check hello access:

  $ curl -s https://image.sc/hello
  image.sc on devonrex

Check blanket redirect:

  $ curl -Is https://image.sc/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 302 Found
  Location: https://forum.image.sc/

  $ curl -Is https://image.sc/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 302 Found
  Location: https://forum.image.sc/foo
