Check IP address:

  $ host prototype.wisc.edu
  prototype.wisc.edu has address 144.92.48.138

  $ host www.prototype.wisc.edu
  www.prototype.wisc.edu has address 144.92.48.138

Check www redirect:

  $ curl -Is http://www.prototype.wisc.edu | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: http://prototype.wisc.edu/\r (esc)

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://prototype.wisc.edu/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://prototype.wisc.edu/.hello\r (esc)

Check hello access:

  $ curl -s https://prototype.wisc.edu/.hello
  prototype.wisc.edu on himalayan

Check access to proxied content:

  $ curl -s https://prototype.wisc.edu | grep '<title>' | head -n1 | xargs
  <title>UW Rapid Prototyping Consortium</title>
