Check IP address:

  $ host microscopy.wisc.edu
  microscopy.wisc.edu has address 144.92.48.136

Check HTTP-to-HTTPS redirect:

  $ curl -Is http://microscopy.wisc.edu/.hello | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://microscopy.wisc.edu/.hello\r (esc)

Check hello access:

  $ curl -s https://microscopy.wisc.edu/.hello
  microscopy.wisc.edu on himalayan

Check calendars redirect:

  $ curl -Is https://microscopy.wisc.edu/cgi-bin/calendar/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://calendars.loci.wisc.edu/\r (esc)

Check blanket redirect:

  $ curl -Is https://microscopy.wisc.edu/ | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://resources.research.wisc.edu/\r (esc)

  $ curl -Is https://microscopy.wisc.edu/foo | grep '^\(HTTP\|Location\)'
  HTTP/1.1 301 Moved Permanently\r (esc)
  Location: https://resources.research.wisc.edu/\r (esc)
