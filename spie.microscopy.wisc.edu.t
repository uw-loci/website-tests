Check IP address:

  $ host spie.microscopy.wisc.edu
  spie.microscopy.wisc.edu has address 144.92.48.136

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://spie.microscopy.wisc.edu/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://spie.microscopy.wisc.edu/.hello\r (esc)

Check hello access:

  $ curl -s https://spie.microscopy.wisc.edu/.hello
  spie.microscopy.wisc.edu on himalayan

Check blanket redirect:

  $ curl -Is https://spie.microscopy.wisc.edu/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://spieopticamadison.org/\r (esc)


  $ curl -Is https://spie.microscopy.wisc.edu/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://spieopticamadison.org/\r (esc)
