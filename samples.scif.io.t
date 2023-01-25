Check IP address:

  $ host samples.scif.io
  samples.scif.io has address 144.92.48.193

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://samples.scif.io/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://samples.scif.io/.hello\r (esc)

Check hello access:

  $ curl -s https://samples.scif.io/.hello
  samples.scif.io on devonrex

Check toplevel redirect:

  $ curl -Is https://samples.scif.io/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://scif.io/images\r (esc)
