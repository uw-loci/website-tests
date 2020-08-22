Check IP address:

  $ host prototype.wisc.edu
  prototype.wisc.edu has address 144.92.48.138

  $ host www.prototype.wisc.edu
  www.prototype.wisc.edu has address 144.92.48.138

Check www redirect:

  $ curl -Is http://www.prototype.wisc.edu | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: http://prototype.wisc.edu/

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://prototype.wisc.edu/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://prototype.wisc.edu/.hello

Check hello access:

  $ curl -s https://prototype.wisc.edu/.hello
  prototype.wisc.edu on devonrex

Check access to proxied content:

  $ curl -s https://prototype.wisc.edu | grep '<title>' | head -n1 | xargs
  <title>UW Rapid Prototyping Consortium</title>
